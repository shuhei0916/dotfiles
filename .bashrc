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

# .colorrcをシェル起動時に有効化
eval `dircolors -b ~/.colorrc`
alias ls='ls --color=auto'

# lnコマンドを実行時、コピーではなくきちんとシンボリックリンクが作られるようにする
# 参考: https://edo1z.hatenablog.com/2017/06/07/windows10-git-bash%E3%81%A7%E3%82%B7%E3%83%B3%E3%83%9C%E3%83%AA%E3%83%83%E3%82%AF%E3%83%AA%E3%83%B3%E3%82%AF%E3%82%92%E3%81%A4%E3%81%8F%E3%82%8C%E3%82%8B%E3%82%88%E3%81%86%E3%81%AB%E3%81%99%E3%82%8B/
export MSYS=winsymlinks:nativestrict