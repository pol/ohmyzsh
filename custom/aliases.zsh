# movement
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Sorted size {{{
alias 'dus=du -sckx * | sort -nr'

# Processes {{{
alias psg='ps aux | grep -v grep | grep -i -e VSZ -e'

# ISO-8106
alias 'now=date +%Y-%m-%dt%H%M'
alias 'today=date +%Y-%m-%d'

# ls variants {{{
alias l="ls -alG"
alias lsd='ls -ld */'
alias ls.='ls -a | egrep "^\."'
alias ls="command ls -G"
alias lsym="ls -la | grep '\->'"

# Miscellaneous {{{
alias 'bk=cd $OLDPWD'
alias 'rm=rm -i'

# Git {{{
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gpl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreed(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gcm='git commit'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gct='git checkout -t'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias gv="git log --pretty=format:'%s' | cut -d ' ' -f 1 | sort | uniq -c | sort -nr"
alias gdb='git diff master..`git rev-parse --abbrev-ref HEAD`'
alias gr='git diff master..'
alias glb='git branch --sort=-committerdate | head'

# Tmux {{{
alias takeove='tmux detach -a'
alias attach='tmux attach -t base || tmux new -s base'
alias ta='tmux attach -t'
alias tn='tmux new -s'
alias tls='tmux ls'

# }}}
# Vagrant {{{
alias vg='vagrant'
alias vs='vagrant ssh'
alias vu='vagrant up'
alias vp='vagrant provision'
alias vh='vagrant halt'
alias vr='vagrant reload'
alias vd='vagrant destroy'
alias vgs='vagrant global-status'

# }}}
# Knife {{{
alias kso='knife status "hostname:ome*"'
alias ks='knife status'
alias kn='knife node'
alias kc='knife client'
alias tagged='knife search node "name:ome-vm*" -a tags'
alias notags='knife search node "NOT tags:* AND name:ome*" -a tags'
alias k='knife'

# password making
alias makepass='openssl rand -base64 12'
alias avpass='pwqgen random=80'
alias mkpassword='avpass'
alias mkpasswd='avpass'
alias password='avpass'

# Terraform 
alias tf='terraform'
alias tfp='terraform plan'
alias tfa='terraform apply'
alias tfi='terraform init'
alias tfw='terraform workspace'
alias tfwd='terraform workspace delete'
alias tfws='terraform workspace select'

# Silly
#alias clear='timeout 2 cmatrix; clear'

#alias pip="sudo -H pip"
alias flush_dns_cache="sudo killall -HUP mDNSResponder"
alias hyalite='ssh hyalite.rci.montana.edu'
alias xhyalite='ssh -Y hyalite.rci.montana.edu -L 9000:localhost:5901'
alias known='vim ~/.ssh/known_hosts'
alias consul_clear_reminders="ssh consul-b-1.av 'CONSUL_HTTP_TOKEN=07440af7-04d1-03df-7a35-f4a148a8b28d consul kv delete --recurse consul-alerts/reminders/'"
alias psql='/Applications/Postgres.app/Contents/Versions/latest/bin/psql'
alias backup_minecraft="tar czvf  ~/Minecraft\ Backups/`date +%Y%m%d-saves`.tgz ~/Library/Application\ Support/minecraft/saves"
alias myip="curl ifconfig.me"
alias gobruch="cd ~/auth0/psaas-bruch && bruch unlock"
alias bu="cd ~/auth0/psaas-bruch && bruch unlock"
alias lg="lazygit"
alias ff="/Applications/Firefox.app/Contents/MacOS/firefox -P"
alias zen="/Users/pol/auth0/psaas-zen/zen"
alias cda0c="cd /Users/pol/auth0/auth0-configuration"
alias scanfix="sudo chown -R pol /Users/pol/Public/*.*"
export PATH="~/auth0/psaas-release:~/.local/bin:/usr/local/opt/curl/bin:~/auth0/teleport/current:$PATH"

