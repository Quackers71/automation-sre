## Place these in your env .bashrc file

# Q Alias commands
alias ..="cd .."
alias qh="cd /home/robq/"

alias gs="git status"
alias gpus="git push"
alias gpo="git push origin $1"
alias ga="git add $1"
alias gaa="git add --all"
alias gcm="git commit -m $1"
alias gcam="git commit -am $1"
alias gdf="git diff $1"
alias gpul="git pull"
alias grh="git reset --hard $1"
alias gl="git log"
alias glg='git log --pretty=format:"%h %s" --graph'
alias gc="git checkout $1"

alias a-g="ansible-galaxy $1"
alias a-p="ansible-playbook $1"
alias a-v="ansible-vault $1"
alias a="ansible"