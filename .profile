export HOME=/data/data/com.termux/files/home
export PATH=$HOME/bin:$HOME/.shortcuts/:$PATH
export PATH=$PATH:$HOME/.cargo/bin
if [[ ! "$PATH" == */data/data/com.termux/files/home/.fzf/bin* ]]; then
  export PATH="$PATH:/data/data/com.termux/files/home/.fzf/bin"
fi
