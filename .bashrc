#
# ~/.bashrc
#

# setfont -d

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '
set -o vi
alias less='less -Q'
alias man='man -P "less -Q"'
alias ls='ls --color=auto'
alias grep='grep --color=auto'


alias pm='pulsemixer'
# alias disable_boost='sudo bash -c "echo 0 > /sys/devices/system/cpu/cpufreq/boost"'

value=$(cat "/sys/devices/system/cpu/cpufreq/boost")
if [ "$value" -eq 1 ]; then
	echo "Disable boost!"
	sudo bash -c "echo 0 > /sys/devices/system/cpu/cpufreq/boost"
fi

export PATH=$PATH:/home/sharpless298/.cargo/bin
