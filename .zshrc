HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
export ZSH=$HOME/ohmyzsh
ZSH_THEME="agnoster"
plugins=(git z zsh-autosuggestions zsh-syntax-highlighting)
source $HOME/.profile
source $ZSH/oh-my-zsh.sh
alias cls=clear
alias ed='nano'
alias edit='nano'
alias ls='exa -lh --color=always --group-directories-first --icons'
alias la='exa -alh --color=always --group-directories-first --icons'
alias install='sudo pacman -S --needed'
alias remove='sudo pacman -R'
alias search='pacman -Ss'
alias pkgclear='sudo pacman -Qdtq | sudo pacman -Rns -'
alias update='yay -Syyu'
alias news='w3m https://archlinux.org/news/'
alias weather='curl "wttr.in/$CITY?format=3&lang=$LOCALE_CODE"'
alias weather3days='curl "wttr.in/$CITY?lang=$LOCALE_CODE"'
alias weather2day='curl "wttr.in/$CITY?format=v2&lang=$LOCALE_CODE"'
alias commit='git commit'
alias push='git push'
alias pull='git pull'
alias add='git add'
alias status='git status'

figlet "Unix System"
fortune | cowsay
echo
