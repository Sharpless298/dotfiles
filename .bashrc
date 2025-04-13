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
alias ndw='nmcli d wifi'
alias ndwc='nmcli d wifi con'
alias sshnptu='ssh cbb113132@ws.csie2.nptu.edu.tw -p 2000'
alias osu='~/Downloads/osu.AppImage'

# if [ "$(cat "/sys/devices/system/cpu/cpufreq/boost")" -eq 1 ]; then
# echo "Disable boost!"
# sudo bash -c "echo 0 > /sys/devices/system/cpu/cpufreq/boost"
# fi

export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.local/share/gem/ruby/3.2.0/bin
export QT_SCALE_FACTOR_ROUNDING_POLICY=RoundPreferFloor

tty_path=$(tty)
if [[ "$tty_path" == /dev/pts/* ]]; then
    if [ "$(cat "/sys/devices/system/cpu/cpufreq/boost")" -eq 1 ]; then
        echo "Disable boost!"
        sudo bash -c "echo 0 > /sys/devices/system/cpu/cpufreq/boost"
    fi
    nitch
    eval "$(starship init bash)"
else
    setfont -d
    pfetch
fi
