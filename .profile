# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

export PATH=$PATH:/usr/local/bin/go/bin:/usr/local/bin/privsec/bin
export EDITOR=vim
mesg n || true
