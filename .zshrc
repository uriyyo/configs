export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

plugins=(
   git
   python
   poetry
   dotenv
   zsh-autosuggestions
   zsh-syntax-highlighting
   history
   emoji
   encode64
)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

alias source_venv="source $(poetry env info -p)/bin/activate"

source_venv

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
