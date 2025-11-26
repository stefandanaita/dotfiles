# Dotfiles
alias dots="cd $DSA"
alias rebrew="$DSA/bin/brew.sh"
alias relink="$DSA/bin/symlink.sh"

# Generics
alias cd="z"
alias ls="eza -lah --icons=always --hyperlink"
alias cat="bat"

alias ll="ls -lah"
alias o="open ."

alias .="pwd"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Stats
alias top="btm -b"
alias htop="btm"

# Vim
alias vi="nvim"
alias vim="nvim"

# K8s
alias k="kubectl"
alias kaf="kubectl apply -f"
alias kgp="kubectl get pods -o wide --all-namespaces"
alias kdp="kubectl describe pods"
alias kkp="kubectl delete pods"
alias kpf="kubectl port-forward"
alias kgd="kubectl get deployment"
alias kgn="kubectl get nodes"
alias kdn="kubectl describe nodes"
alias kkn="kubectl delete nodes"
alias kpv="kubectl get pods --all-namespaces -o json | jq '.items[] | .status.containerStatuses[0].image' | sort | uniq | sed 's/.*\//"/' | sed 's/"//g' | rg "

# IPs
alias ip="curl ifconfig.co"

# Git
alias gga="git add ."
alias ggp="git push"
alias ggpo="git push origin "
alias ggs="git status"
alias ggf="git fetch --all && git pull"
alias ggc="git commit -m"
alias ggt="git tag -l --sort -version:refname | head -n 10"
alias ggl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias nah="git reset --hard; git clean -df"
alias ggm="git checkout master; ggf"

# PHP
alias pa="php artisan"
alias mfs="php artisan migrate:fresh --seed"
