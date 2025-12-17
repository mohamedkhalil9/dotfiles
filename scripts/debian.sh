# system update
sudo apt update
sudo apt upgrade
# sudo apt install nala

# menu timeout
sudo nano /etc/default/grub
sudo update-grub

# zsh
sudo apt install zsh
chsh -s $(which zsh)

# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"
# Download and install Node.js:
nvm install 24
# Verify the Node.js version:
node -v # Should print "v22.17.1".
# Download and install pnpm:
corepack enable pnpm
# Verify pnpm version:
pnpm -v

## setup dev env typescript, tsx, gemeni-cli, nest
pnpm install -g typescript tsx @nestjs/cli
pnpm install -g @google/gemini-cli @qwen-coder/qwen-coder
pnpm install -g @charmland/crush #opencodep-ai
# pnpm install -g @anthropic-ai/claude-cli @openai/codex

# nerd font
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip &&
    cd ~/.local/share/fonts &&
    unzip JetBrainsMono.zip &&
    rm JetBrainsMono.zip &&
    fc-cache -fv
# inter font kde
# otf-commit-mono

# kitty
# sudo apt install kitty

git config --global user.name "Mohamed Khalil"
git config --global user.email "mohamedkhalildev@gmail.com"
ssh-keygen -t ed25519 -C "mohamedkhalildev@gmail.com"
# ssh -T git@github.com

# clone dotfiles
git clone git@github.com:mohamedkhalil9/dotfiles.git
# stow dotfiles

# 1. Download and store the repository signing key (dearmored)
sudo curl -fsSL https://debian.griffo.io/EA0F721D231FDD3A0A17B9AC7808B4DD62C41256.asc |
    sudo gpg --dearmor -o /usr/share/keyrings/debian.griffo.io.gpg

# 2. Add the repository, referencing the keyring using 'signed-by'
echo "deb [signed-by=/usr/share/keyrings/debian.griffo.io.gpg] \
  https://debian.griffo.io/apt $(lsb_release -sc) main" |
    sudo tee /etc/apt/sources.list.d/debian.griffo.io.list

# 3. Update and install
sudo apt update
sudo apt install ghostty tmux neovim lazygit btop fastfetch obs-studio mpv #vlc
sudo apt install ffmpeg 7zip jq poppler-utils fd-find ripgrep fzf zoxide imagemagick
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update
git clone https://github.com/sxyazi/yazi.git
cd yazi
cargo build --release --locked
mv target/release/yazi target/release/ya /usr/local/bin/
sudo apt install gparted xreader filezilla #superproductivity
# zen-browser-bin apidog notion-app-electron                        #anytype-bin
# mongodb-bin mongodb-compass-bin nomacs code #visual-studio-code-bin

# droidcam

# asusctl

# # dwm download and build
# sudo apt install build-essentail libx11-dev libxinerama-dev sharutils libxft-dev
# git clone https://git.suckless.org/dwm
# git clone https://git.suckless.org/dmenu
# sudo make install
# # dwm session
# cd usr/share/xsessions
# sudo touch dwm.desktop
# sudo nano dwm.desktop
#
# [Desktop Entry]
# Encoding=UTF-8
# Name=Dwm
# Comment=the dynamic window manager
# Exec=dwm
# Icon=dwm
# Type=XSession
#
# # font and terminal => CommitMono Nerd Font
# cd .config/dwm
# sudo nano config.h
# sudo make clean install
#
# # install vlc htop neofetch syncthing
# sudo nala install vlc htop syncthing
#
# # brave-browser
# sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
#
# echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
#
# sudo apt update
# sudo nala install brave-browser
#
# # zsh ang config
# sudo nala install zsh -y
# chsh -s $(which zsh)
#
#
# # postman
# sudo rm -rf /opt/Postman
# tar -C /tmp/ -xzf <(curl -L https://dl.pstmn.io/download/latest/linux64) && sudo mv /tmp/Postman /opt/
# sudo tee -a /usr/share/applications/postman.desktop <<END
# [Desktop Entry]
# Encoding=UTF-8
# Name=Postman
# Exec=/opt/Postman/Postman
# Icon=/opt/Postman/app/resources/app/assets/icon.png
# Terminal=false
# Type=Application
# Categories=Development;
# END
#
# # feh wallpaper
# sudo nala install feh
#
# # audiorelay
# # copy folder
# # add .desktop
#
# # tmux and config
# sudo nala install tmux
# mv .tmux.conf /.tmux.conf
#
# # lxappearance
# sudo nala install lxappearance

# preload
sudo nala install preload

# neovim nvchad
# sudo add-apt-repository ppa:neovim-ppa/unstable
# sudo nala install neovim
# git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
