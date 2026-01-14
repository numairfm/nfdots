
# -----------------------------------
# Environment and Paths
# -----------------------------------
# Add standard directories to PATH
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
export EDITOR="nvim"

# -----------------------------------
# Tools and Shell Initialization
# -----------------------------------
# Zoxide
eval "$(zoxide init zsh)"

# -----------------------------------
# Aliases
# -----------------------------------

# Package Manager
alias i='sudo dnf install'
alias r='sudo dnf remove'
alias ud='sudo dnf update'

# Python
alias envenv='source .venv/bin/activate'

# Editing
alias zshc='${EDITOR} ~/.zshrc'

function cfg {
    yazi ~/.config/"$1"
}

# Launching
alias open='xdg-open'
alias launch='gio launch'
alias $(printf %s $(date +%Y))='echo "the year of the linux desktop"'

#load zgenom
source "${HOME}/.zgenom/zgenom.zsh"

if ! zgenom saved; then

  zgenom ohmyzsh

  zgenom ohmyzsh plugins/git
  zgenom ohmyzsh plugins/command-not-found
  zgenom ohmyzsh plugins/sudo 

  zgenom load zsh-users/zsh-autosuggestions
  zgenom load zsh-users/zsh-syntax-highlighting

  # zgenom ohmyzsh themes/bureau

  zgenom save
fi

export PATH=$PATH:/home/numair/.spicetify
eval "$(starship init zsh)"
