# system update
sudo apt update
sudo apt upgrade
sudo apt install nala
sudo nala install kitty
sudo nala remove vlc kate goldendict-ng gimp gwenview akregator kmail konqueror dragonplayer juk libreoffice-common firefox-esr kwrite kwalletmanager xterm anthy-common xiterm+thai konsole

git config --global user.name "Mohamed Khalil"
git config --global user.email "mohamedkhalildev@gmail.com"
# generate ssh and save it ~/.ssh/
ssh-keygen -t ed25519 -C "mohamedkhalildev@gmail.com"
# then copy it and add it github ssh keys
# test the connection
ssh -T git@github.com

# clone dotfiles
git clone git@github.com:mohamedkhalil9/dotfiles.git
# stow dotfiles
sudo nala install stow
# move all config files in the directory . to ~/
stow .

# zsh
sudo nala install zsh
chsh -s $(which zsh)

# nerd font
mv ~/JetBrainsMono.zip ~/.local/share/fonts/
cd ~/.local/share/fonts &&
    unzip JetBrainsMono.zip &&
    rm JetBrainsMono.zip &&
    fc-cache -fv
# inter font kde
# otf-commit-mono

# menu timeout
sudo nano /etc/default/grub
sudo update-grub

# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
\. "$HOME/.nvm/nvm.sh"
nvm install 24
node -v # Should print "v22.17.1".
corepack enable pnpm
pnpm -v

curl -fsSL https://bun.com/install | bash
bun --version
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
source ~/.bashrc # or ~/.zshrc

bun add -g typescript @nestjs/cli

curl -fsSL https://opencode.ai/install | bash
curl -fsSL https://gh.io/copilot-install | bash

curl -fsSL https://cli.coderabbit.ai/install.sh | sh
# bash -c "$(curl -fsSL https://qwen-code-assets.oss-cn-hangzhou.aliyuncs.com/installation/install-qwen.sh)"
# bun add -g @google/gemini-cli

# pnpm install -g @anthropic-ai/claude-cli @openai/codex

# download zen.tar.xz
sudo ln -s /path/to/zen/zen /usr/local/bin/zen
mkdir -p ~/.local/share/applications
nano ~/.local/share/applications/zen-browser.desktop
[Desktop Entry]
Version=1.0
Name=Zen Browser
Comment=Browse the web with Zen
GenericName=Web Browser
Exec=zen
Icon=/home/mohamed/apps/zen/browser/chrome/icons/default/default128.png
Terminal=false
Type=Application
Categories=Network
WebBrowser
MimeType=text/html
application/xhtml+xml
application/xml
application/pdf
x-scheme-handler/http
x-scheme-handler/https
StartupNotify=true
StartupWMClass=zen

curl -sS https://debian.griffo.io/EA0F721D231FDD3A0A17B9AC7808B4DD62C41256.asc | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/debian.griffo.io.gpg
echo "deb https://debian.griffo.io/apt $(lsb_release -sc 2>/dev/null) main" | sudo tee /etc/apt/sources.list.d/debian.griffo.io.list
sudo nala update
sudo nala install ghostty

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >>~/.zshrc
source ~/.zshrc
rm nvim-linux-x86_64.tar.gz
nvim --version

sudo nala install tmux btop fastfetch obs-studio mpv lazygit nomacs
## notion appimage & apidog .deb files install
# https://github.com/forgexfoundation/notion-desktop

sudo nala install gparted filezilla okular #superproductivity

# sudo mkdir -p /etc/apt/keyrings
# curl -fsSL https://us-central1-apt.pkg.dev/doc/repo-signing-key.gpg |
#     sudo gpg --dearmor --yes -o /etc/apt/keyrings/antigravity-repo-key.gpg
# echo "deb [signed-by=/etc/apt/keyrings/antigravity-repo-key.gpg] https://us-central1-apt.pkg.dev/projects/antigravity-auto-updater-dev/ antigravity-debian main" |
#     sudo tee /etc/apt/sources.list.d/antigravity.list >/dev/null
#
# sudo nala update
# sudo nala install antigravity

git clone https://github.com/academo/ww-run-raise.git
cd ww-run-raise
cp ww /usr/local/bin
## add open||focus shortcuts kwin
ww -f com.mitchellh.ghostty -c ghostty # alt t
ww -f kitty -c kitty
ww -f zen -c zen                   # alt b
ww -f com.obsproject.Studio -c obs # alt o
ww -f apidog -c apidog             # alt a
ww -f org.kde.dolphin -c dolphin   # alt e
# ww -f notion-electron -c notion-electron # ALT+N
ww -f notion-desktop -c /home/user/dir/notion.AppImage
ww -f org.kde.okular -c okular # ALT R
ww -f mpv -c mpv               # ALT Y
ww -f code -c code             # ALT V
# yazi?

~/.config/kwinrc
[Windows]
BorderlessMaximizedWindows=true

bash -c "$(curl -sLo- https://superfile.dev/install.sh)"
# yazi debian
sudo nala install ffmpeg 7zip jq poppler-utils fd-find ripgrep fzf zoxide imagemagick
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update
git clone https://github.com/sxyazi/yazi.git
cd yazi
cargo build --release --locked
mv target/release/yazi target/release/ya /usr/local/bin/

# mongodb-bin mongodb-compass-bin
# https://www.mongodb.com/try/download/community
sudo nala install gnupg curl
curl -fsSL https://www.mongodb.org/static/pgp/server-8.0.asc |
    sudo gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg \
        --dearmor
echo "deb [ signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] https://repo.mongodb.org/apt/debian bookworm/mongodb-org/8.2 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-8.2.list
sudo nala update
sudo nala install mongodb-org
systemctl start mongod
systemctl enable mongod
systemctl status mongod

#https://www.mongodb.com/try/download/compass
wget https://downloads.mongodb.com/compass/mongodb-compass_1.46.10_amd64.deb
sudo apt install ./mongodb-compass_1.46.10_amd64.deb

sudo nala remove $(dpkg --get-selections docker.io docker-compose docker-doc podman-docker containerd runc | cut -f1)
# Add Docker's official GPG key:
sudo nala update
sudo nala install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/debian
Suites: $(. /etc/os-release && echo "$VERSION_CODENAME")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo nala update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl status docker
# sudo systemctl start docker
sudo docker run hello-world

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/keyrings/microsoft-archive-keyring.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code

# droidcam
# the obs plugin

# asusctl
sudo apt install libclang-dev libudev-dev libfontconfig-dev build-essential cmake libxkbcommon-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
make
sudo make install

# preload
sudo nala install preload
