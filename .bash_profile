# ~/.bash_profileを読み込んだ際に~/.bashrcを読み込むようにする
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi


# winptyをつけるのが面倒なので、winpty bashのエイリアス
# ls時のディレクトリ色付けがされないので一時的にコメントアウトしてます
# echo "Now setting: default winpty bash"
# exec winpty bash # execコマンドはいまひとつ理解してない