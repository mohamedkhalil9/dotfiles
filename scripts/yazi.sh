if tmux list-sessions &>/dev/null; then
    if tmux list-windows -F "#{window_name}" | grep -q "^yazi$"; then
        tmux select-window -t yazi
    else
        tmux new-window -n yazi yazi
    fi
    ww -f kitty -c kitty
    # ww -f kitty -c "kitty -e tmux new-session -s main -n yazi yazi"
else
    ww -f kitty -c "kitty -e tmux new-session -s main -n yazi yazi"
fi
