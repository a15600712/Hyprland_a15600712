if status is-interactive
    # Commands to run in interactive sessions can go here
end

#alias z = 'fzf --style full --preview "bat --color=always {}" | xargs -r zed '
alias z="fzf --style full --preview 'bat --color=always {}' | xargs -r --delimiter='\n' zed && exit"
alias h='nmcli device wifi hotspot ifname wlan0 ssid Hotspot password 88888888 && nmcli dev wifi show-password'
alias hk='nmcli device disconnect wlan0'


#export GTK_IM_MODULE=fcitx

export QT_IM_MODULE=fcitx

export XMODIFIERS="@im=fcitx"
export INPUT_METHOD=fcitx
export SDL_IM_MODULE=fcitx

# Set up fzf key bindings
fzf --fish | source

zoxide init --cmd cd fish | source
