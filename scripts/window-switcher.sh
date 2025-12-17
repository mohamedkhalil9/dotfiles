#!/bin/bash

# Function to focus or launch application
focus_or_launch() {
    local class="$1"
    local command="$2"

    # Try to find window by class
    if wmctrl -lx | grep -i "$class" >/dev/null; then
        # Window exists, focus it
        wmctrl -x -a "$class"
    else
        # Window doesn't exist, launch it
        $command &
        # Wait a moment for window to appear
        sleep 0.5
        # Try to focus the new window
        wmctrl -x -a "$class" 2>/dev/null || true
    fi
}

# Parse command line argument
case "$1" in
"zen" | "b")
    focus_or_launch "zen" "zen-browser"
    ;;
"ghostty" | "t")
    focus_or_launch "ghostty" "ghostty"
    ;;
"notion" | "n")
    focus_or_launch "notion" "/home/mohamed/Downloads/notion-electron-1.7.12.x86_64.AppImage"
    ;;
"apidog" | "a")
    focus_or_launch "apidog" "apidog"
    ;;
"xreader" | "r")
    focus_or_launch "xreader" "xreader"
    ;;
"vscode" | "code" | "v")
    focus_or_launch "code" "code"
    ;;
"obs" | "o")
    focus_or_launch "obs" "obs"
    ;;
"mpv" | "y")
    focus_or_launch "mpv" "mpv"
    ;;
"yazi" | "e")
    if tmux list-sessions &>/dev/null; then
        # Check if yazi window exists
        if tmux list-windows -F "#{window_name}" | grep -q "^yazi$"; then
            # Switch to existing yazi window
            tmux select-window -t yazi
        else
            # Create new yazi window
            tmux new-window -n yazi yazi
        fi
        focus_or_launch "ghostty" "ghostty"
    else
        ghostty -e tmux new-session -s main -n yazi yazi &
    fi
    ;;
*)
    echo "Usage: $0 {zen|b|ghostty|t|notion|n|apidog|a|xreader|r|vscode|v|obs|o|mpv|y|yazi|e}"
    echo ""
    echo "Shortcuts:"
    echo "  zen|b      - Zen Browser"
    echo "  ghostty|t  - Ghostty Terminal"
    echo "  notion|n   - Notion"
    echo "  apidog|a   - Apidog"
    echo "  xreader|r  - Xreader"
    echo "  vscode|v   - Visual Studio Code"
    echo "  obs|o      - OBS Studio"
    echo "  mpv|y      - MPV Media Player"
    echo "  yazi|e     - Yazi File Manager"
    exit 1
    ;;
esac
