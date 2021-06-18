# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.config/zsh/omz_config.zsh
source ~/.config/zsh/p10k_config.zsh
source ~/.config/zsh/zplug_config.zsh

source ~/.config/zsh/path.zsh;

# do not update homebrew before install
export HOMEBREW_NO_AUTO_UPDATE=1

# use nvim instead of vim
alias vim=nvim

# ls whenever changing directories
function chpwd() {
    emulate -L zsh
    la
}

# Add jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable
# change.
export PATH="$PATH:$HOME/.rvm/bin"
