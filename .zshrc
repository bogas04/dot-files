autoload -Uz add-zsh-hook vcs_info

zstyle ':vcs_info:git:*' formats ' (%F{red}%b%f)'
zstyle ':vcs_info:*' enable git

update_prompt_vcs() {
  vcs_info
  PS1=" %F{green}%1~${vcs_info_msg_0_}%f "
}

add-zsh-hook precmd update_prompt_vcs
update_prompt_vcs

# Common shortcuts
alias ..='cd ..'
alias gr='git rebase'
alias ga='git add'
alias gp='git push'
alias gpr='git pull origin --rebase'
alias gprgp='git pull origin --rebase && git push'
alias gs='git stash'
alias gsp='git stash pop'
alias gc='git commit'
alias gcm='git commit -m'
alias gcb='git checkout -b'

alias ni='pnpm install'
alias nis='pnpm install -S'
alias nig='pnpm install -g'
alias nid='pnpm install -D'
alias nu='pnpm update'
alias ns='pnpm start'
alias nr='pnpm run'
alias nd='pnpm run dev'
alias nb='pnpm run build'
alias nt='pnpm test'

# Move files to macOS Trash when using rm.
rm() {
  local -a paths unsupported_flags
  local parsing_flags=true
  local arg

  for arg in "$@"; do
    if $parsing_flags; then
      case "$arg" in
        --)
          parsing_flags=false
          continue
          ;;
        -h|--help)
          cat <<'EOF'
Usage: rm [OPTION]... FILE...

Safe wrapper around macOS `trash`.
Files are moved to Trash instead of being permanently deleted.

Notes:
  - Common rm flags like -r, -f, -i, and -v are accepted but ignored.
  - Use `command rm` if you really need the system rm.
  - Use `--` before a path that starts with `-`.
EOF
          return 0
          ;;
        -[RrfiIv]*)
          continue
          ;;
        -?*)
          unsupported_flags+=("$arg")
          continue
          ;;
      esac
    fi

    paths+=("$arg")
  done

  if (( ${#paths[@]} == 0 )); then
    echo "rm: missing operand" >&2
    echo "Try 'rm --help' for more information." >&2
    return 1
  fi

  if (( ${#unsupported_flags[@]} > 0 )); then
    echo "rm: unsupported flags ignored by trash wrapper: ${unsupported_flags[*]}" >&2
  fi

  command trash "${paths[@]}"
}

# Compare two videos side by side and mark when each one finishes.
comparemp4() {
  local input1="$1"
  local input2="$2"
  local text1="${3:-Before}"
  local text2="${4:-After}"
  local output="comparison_output.mp4"
  local done_hold="0.8"

  if [ -z "$input1" ] || [ -z "$input2" ]; then
    echo "Usage: comparemp4 <input1.mov> <input2.mov> [text1] [text2]"
    return 1
  fi

  local duration1=$(ffprobe -v quiet -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$input1")
  local duration2=$(ffprobe -v quiet -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$input2")
  local total_duration=$(awk -v d1="$duration1" -v d2="$duration2" -v hold="$done_hold" 'BEGIN { max=(d1>d2?d1:d2); printf "%.3f", max+hold }')

  ffmpeg -i "$input1" -i "$input2" -filter_complex "
  [0:v]pad=iw+40:ih+360:20:300:black,tpad=stop_mode=clone:stop_duration=${done_hold}[v0];
  [1:v]pad=iw+40:ih+360:20:300:black,tpad=stop_mode=clone:stop_duration=${done_hold}[v1];
  [v0][v1]hstack[temp];
  [temp]drawtext=text='$text1':fontcolor=white:fontsize=40:x=(w/4-text_w/2):y=100,
  drawtext=text='$text2':fontcolor=white:fontsize=40:x=(3*w/4-text_w/2):y=100,
  drawtext=text='DONE! (${duration1}s)':fontcolor=red:fontsize=40:x=(w/4-text_w/2):y=170:enable='gte(t,$duration1)',
  drawtext=text='DONE! (${duration2}s)':fontcolor=green:fontsize=40:x=(3*w/4-text_w/2):y=170:enable='gte(t,$duration2)'[v]
  " -map "[v]" -map "0:a?" -t "$total_duration" "$output"

  if [ $? -eq 0 ]; then
    echo "Comparison video created: $output"
  else
    echo "Error creating comparison video"
  fi
}

# Convert a video to an MP4 beside the source file.
tomp4() {
  if [ -z "$1" ]; then
    echo "Usage: tomp4 <filename>"
    return 1
  fi

  local input_file="$1"
  local output_file="${input_file%.*}.mp4"
  ffmpeg -i "$input_file" "$output_file"
}

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

lazy_load_bun() {
  unset -f bun
  [ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"
}

bun() {
  lazy_load_bun
  bun "$@"
}

# Node through nvm
export NVM_DIR="$HOME/.nvm"
export NODE_BINARY="$HOME/.local/bin/node"

lazy_load_nvm() {
  unset -f nvm node npm npx yarn yarnpkg corepack
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
}

nvm() {
  lazy_load_nvm
  nvm "$@"
}

node() {
  lazy_load_nvm
  node "$@"
}

npm() {
  lazy_load_nvm
  npm "$@"
}

npx() {
  lazy_load_nvm
  npx "$@"
}

yarn() {
  lazy_load_nvm
  yarn "$@"
}

yarnpkg() {
  lazy_load_nvm
  yarnpkg "$@"
}

corepack() {
  lazy_load_nvm
  corepack "$@"
}

export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:$HOME/.maestro/bin"
eval "$(rbenv init - zsh)"
