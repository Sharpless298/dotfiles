#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '
set -o vi
alias less='less -Q'
alias man='man -P "less -Q"'
alias ls='lsd'
alias grep='grep --color=auto'
alias pm='pulsemixer'
alias ndwc='nmcli d wifi con Pixel7'

# alias disable_boost='sudo bash -c "echo 0 > /sys/devices/system/cpu/cpufreq/boost"'

value=$(cat "/sys/devices/system/cpu/cpufreq/boost")
if [ "$value" -eq 1 ]; then
	echo "Disable boost!"
	sudo bash -c "echo 0 > /sys/devices/system/cpu/cpufreq/boost"
fi
export PATH=$PATH:/home/sharpless298/.cargo/bin
export PATH=$PATH:/home/sharpless298/.local/share/gem/ruby/3.2.0/bin
export QT_SCALE_FACTOR_ROUNDING_POLICY=RoundPreferFloor
