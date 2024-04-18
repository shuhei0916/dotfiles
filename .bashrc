# for prompt
source ~/.git-completion.sh
source ~/.git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

PS1="[\W][$(date +%H:%M)]$ "

PS1='\[\033[33m\]'              # change to brownish yellow
PS1="$PS1"'\W'                 # current working directory
PS1="$PS1"'\[\033[32m\]'        # change to green
PS1="$PS1"'[$(date +%H:%M)]'
PS1="$PS1"'\[\033[35m\]'       # change to purple
PS1="$PS1"'$(__git_ps1)'        # \[\e[m\]\$ '
PS1="$PS1"'\[\033[0m\]'        # change color
PS1="$PS1"'$ '                 # prompt: always $

# treeコマンドのエイリアス（https://qiita.com/yamazaki_25/items/1e9659140db49ee90ff4）
alias tree='cmd //c tree //A //F | iconv -f CP932 -t UTF-8'