# system update
sudo pacman -Syu
yay

# menu timeout
sudo nano /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

# zsh
sudo pacman -S zsh
chsh -s $(which zsh)

# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"
# Download and install Node.js:
nvm install 22
# Verify the Node.js version:
node -v     # Should print "v22.17.1".
nvm current # Should print "v22.17.1".
# Download and install pnpm:
corepack enable pnpm
# Verify pnpm version:
pnpm -v

## setup dev env typescript, tsx, gemeni-cli, nest
pnpm install -g typescript tsx gemini-cli @nestjs/cli
# other npm global packages

# java
sudo pacman -S jdk11-openjdk

# nerd font
sudo pacman -S ttf-jetbrains-mono-nerd
# inter font
# otf-commit-mono

# kitty
# sudo pacman -S kitty

git config --global user.name "Mohamed Khalil"
git config --global user.email "mohamedkhalildev@gmail.com"
ssh-keygen -t ed25519 -C "mohamedkhalildev@gmail.com"
# ssh -T git@github.com

# clone dotfiles
git clone git@github.com:mohamedkhalil9/dotfiles.git
# stow -d ~/dotfiles/ --target ~

sudo pacman -S ghostty tmux neovim lazygit btop fastfetch obs-studio mpv #vlc
sudo pacman -S yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide imagemagick
sudo pacman -S gparted xreader filezilla           #superproductivity
yay -S zen-browser-bin apidog notion-app-electron  #anytype-bin
yay -S mongodb-bin mongodb-compass-bin nomacs code #visual-studio-code-bin

# asusctl
sudo yay -S asusctl
asusctl -c 80

# hyprland
sudo pacman -S hyprland rofi waybar hyprpaper hyprlock swaync wlogout
#hyprshot hypridle blueberry network-manager-applet brightnessctl #mwg-look

# auto cpu-freq, tlp tlp-rdw, preload
yay -S preload tlp tlp-
git clone auto cpu freq

systemctl preload status #

# cpu unicodes
# sudo pacman -S intel-ucode

# neovim nvchad
# git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
# mason install typescript-language-server, lsp uncomment and tree sitter TSInstall javascript
# doomchad theme
