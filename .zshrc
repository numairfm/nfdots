# -----------------------------------
# Path
# -----------------------------------
typeset -U path 
path=("$HOME/bin" "$HOME/.local/bin" "/usr/local/bin" "$HOME/.spicetify" $path)
export EDITOR="nvim"

# -----------------------------------
# Tool Inits
# -----------------------------------
if [[ -n "$(command -v zoxide)" ]]; then
    eval "$(zoxide init zsh)" 
fi

if [[ -n "$(command -v starship)" ]]; then
    eval "$(starship init zsh)"
fi

# -----------------------------------
# Plugin Loading
# -----------------------------------
source "${HOME}/.zgenom/zgenom.zsh"

if ! zgenom saved; then
  zgenom ohmyzsh
  zgenom ohmyzsh plugins/git
  zgenom ohmyzsh plugins/command-not-found
  zgenom ohmyzsh plugins/sudo 
  zgenom load zsh-users/zsh-autosuggestions
  zgenom load zsh-users/zsh-syntax-highlighting
  zgenom save
fi

# -----------------------------------
# Aliases
# -----------------------------------
alias i='sudo dnf install'
alias r='sudo dnf remove'
alias ud='sudo dnf update'
alias envenv='source .venv/bin/activate'
alias zshc='${EDITOR} ~/.zshrc'
alias open='xdg-open'
alias launch='gio launch'
alias $(date +%Y)='echo "the year of the linux desktop"'

function cfg {
    ${EDITOR} ~/.config/"$1"
}

