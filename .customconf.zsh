#Stlye
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#585858,underline"

#Aliases
alias ls='ls --color=auto -lh --group-directories-first'
alias lsa='ls --color=auto -lhA --group-directories-first'
alias apdate='sudo apt update'
alias apgrade='sudo apt upgrade'
alias apclean='sudo apt autoclean && sudo apt autoremove'
alias boxes-htb='cd ~/Documents/htb/boxes'
alias vulnhub='cd ~/Documents/vulnhub/boxes'
alias privsec='cd /usr/local/bin/privsec'
alias oscp='cd ~/Documents/oscp'
alias course-oscp='cd ~/Documents/oscp/course'
alias lab-oscp='cd ~/Documents/oscp/lab'
alias boxes-oscp='cd ~/Documents/oscp/lab/boxes'
alias connectoscp='sudo openvpn ~/Documents/oscp/oscp.ovpn'
alias connecthtb='sudo openvpn ~/Documents/htb/redo.ovpn'
alias record-terminal='script -a ~/Documents/oscp/terminal-recordings/$(date +%y%m%d)'
alias py='python'
alias nightlight='gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true'
alias daylight='gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled false'
alias e='evince'
alias sd='sudo ' #Keep alias expansion while working with sudo
#Settings
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE
#Helper
decode () {
	echo "$1" | base64 -d 
}
alarm () {
	sudo watch -n 0.3 'netstat -pantl | grep "ESTABLISHED\|LISTEN"'
}
