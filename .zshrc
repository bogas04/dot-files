export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias vim='nvim'
alias grep='rg'
alias rm='trash' # I use trash-cli to prevent accidental `rm`s
alias gpr='git pull --rebase'
alias gp='git push'
alias gcb='git checkout -b'
alias gprgp='git pull --rebase && git push'
alias gs='git stash'
alias gsp='git stash pop'
alias gcm='git commit -m'
alias ga='git add'
alias ni='npm install'
alias nis='npm install -S'
alias nig='npm install -g'
alias nid='npm install -D'
alias nu='npm update'
alias ns='npm start'
alias nr='npm run'
alias nd='npm run dev'
alias nb='npm run build'
alias nt='npm test'

# alias node='bun'
# alias ni='bun install'
# alias nis='bun install -S'
# alias nig='bun install -g'
# alias nid='bun install -D'
# alias nu='bun update'
# alias ns='bun start'
# alias nr='bun run'
# alias nd='bun run dev'
# alias nb='bun run build'
# alias nt='bun test'

alias ui-screens='cd ~/Work/ui-screens'
alias ui-core='cd ~/Work/ui-core'
alias ui-components='cd ~/Work/ui-components'
alias udaan-fe='cd ~/Work/udaan-fe'
alias installapp='adb install /Users/divjot/Work/udaan-fe/app/android/app/build/outputs/apk/release/app-universal-release.apk'
alias stopapp='adb shell am force-stop com.udaan.android.debug'
alias restartapp='adb shell am force-stop com.udaan.android.debug && adb shell am start-activity -W -n com.udaan.android.debug/com.udaan.android.rn.MainActivity'
alias startapp='adb shell am start-activity -W -n com.udaan.android.debug/com.udaan.android.rn.MainActivity'
alias deeplink='adb shell am start -d'
alias dts='git commit -m "#deploy-app-to-stage" --allow-empty'
alias dwp='git commit -m "#deploy-web-to-prod" --allow-empty'
alias uis='API_ENV=prod yarn dev-rspack'
alias dall='gcm "#deploy-app-to-stage #deploy-web-to-prod" --allow-empty'



tomp4() {
    # Check if a filename is provided
    if [ -z "$1" ]; then
        echo "Usage: convert_to_mp4 <filename>"
        return 1
    fi

    # Get the input file name from the first parameter
    local input_file="$1"

    # Extract the base name without the extension
    local base_name="${input_file%.*}"

    # Construct the output file name
    local output_file="${base_name}.mp4"

    # Run the ffmpeg command
    ffmpeg -i "$input_file" "$output_file"
}

onm() {
    local input_path="$1"
    local work_dir="/Users/divjot.singh/Work"
    local udaan_dir="./node_modules/@udaan"
    local dist_dir="dist"
    local output_path

    # Remove the initial path until "Work"
    output_path="${input_path#"$work_dir"}"

    # Replace "ui-screens/src" with "ui-screens/dist"
    output_path="${output_path/src/$dist_dir}"

    # Change the extension from .tsx or .ts to .js
    output_path="${output_path%.ts*}.js"

    # Prepend the Udaan directory
    output_path="$udaan_dir$output_path"

    code "$output_path"
}

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home

# pnpm
export PNPM_HOME="/Users/divjot.singh/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/Users/divjot.singh/.bun/_bun" ] && source "/Users/divjot.singh/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
