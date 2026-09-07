sudo dnf upgrade

sudo dnf install zsh
chsh -s $(which zsh)

git clone git@github.com:mohamedkhalil9/dotfiles.git
sudo dnf install stow
stow zsh kitty ghostty tmux nvim btop

## logout

curl -fsSL https://github.com/zen-browser/updates-server/raw/refs/heads/main/install.sh | $SHELL
curl -fsS https://dl.brave.com/install.sh | sh
sudo dnf install kitty tmux btop fastfetch obs-studio mpv nomacs
## notion appimage & apidog .rpm files install
# https://github.com/forgexfoundation/notion-desktop

## vim latest release
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >>~/.zshrc
source ~/.zshrc
rm nvim-linux-x86_64.tar.gz
nvim --version

sudo dnf install gparted filezilla
sudo dnf remove akregator dragon elisa-player firefox gwenview kaddressbook kleopatra kmahjongg kmail kmines konsole kontact korganizer kpatience kwalletmanager5 kwrite libreoffice-core
#sudo dnf remove digikam kpatience kolourpaint showfoto

cp ~/apps/JetBrainsMono.zip ~/.local/share/fonts/
cd ~/.local/share/fonts &&
    unzip JetBrainsMono.zip &&
    rm JetBrainsMono.zip &&
    fc-cache -fv
# inter font kde
# otf-commit-mono

sudo nano /etc/default/grub
sudo grub2-mkconfig -o /boot/grub2/grub.cfg

git config --global user.name "Mohamed Khalil"
git config --global user.email "mohamedkhalildev@gmail.com"
ssh-keygen -t ed25519 -C "mohamedkhalildev@gmail.com"
ssh -T git@github.com

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.6/install.sh | bash
\. "$HOME/.nvm/nvm.sh"
nvm install 24
node -v # Should print "v22.17.1".
curl -fsSL https://get.pnpm.io/install.sh | sh -
#corepack enable pnpm
#corepack disable pnpm
#corepack prepare pnpm@latest --activate
pnpm -v

curl -fsSL https://bun.com/install | bash
bun --version
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
source ~/.bashrc # or ~/.zshrc

bun add -g typescript @nestjs/cli
curl -sLO https://github.com/tailwindlabs/tailwindcss/releases/latest/download/tailwindcss-linux-x64
chmod +x tailwindcss-linux-x64
mv tailwindcss-linux-x64 tailwindcss
sudo mv tailwindcss /usr/local/bin/tailwindcss

curl -fsSL https://opencode.ai/install | bash
curl -fsSL https://pi.dev/install.sh | sh
# curl -fsSL https://gh.io/copilot-install | bash
# curl -fsSL https://cli.coderabbit.ai/install.sh | sh
# bash -c "$(curl -fsSL https://qwen-code-assets.oss-cn-hangzhou.aliyuncs.com/installation/install-qwen.sh)"
# bun add -g @google/gemini-cli
# pnpm install -g @anthropic-ai/claude-cli @openai/codex

sudo dnf copr enable dejan/lazygit
sudo dnf install lazygit
sudo dnf copr enable scottames/ghostty
sudo dnf install ghostty
sudo dnf copr enable lihaohong/yazi
sudo dnf install yazi

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc && echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo >/dev/null
dnf check-update && sudo dnf install code # or code-insiders

sudo dnf remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-selinux docker-engine-selinux docker-engine
sudo dnf config-manager addrepo --from-repofile https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable --now docker
sudo docker run hello-world

#sudo tee /etc/yum.repos.d/mongodb-org.repo <<"EOF"
#[mongodb-org-8.3]
#name=MongoDB Repository
#baseurl=https://repo.mongodb.org/yum/redhat/9/mongodb-org/8.3/x86_64/
#gpgcheck=1
#enabled=1
#gpgkey=https://www.mongodb.org/static/pgp/server-8.0.asc
#EOF
#sudo dnf makecache
#sudo dnf install mongodb-org
#
#sudo systemctl start mongod
#sudo systemctl enable mongod
#sudo systemctl status mongod
#mongosh

## https://www.mongodb.com/try/download/compass

# TODO: postgres redis docker

# bash -c "$(curl -sLo- https://superfile.dev/install.sh)"
# sudo dnf install obs-studio-plugin-droidcam

# sudo dnf copr enable lukenukem/asus-linux
# sudo dnf install asusctl
sudo tee /etc/systemd/system/battery-charge-limit.service <<'EOF'
[Unit]
Description=Set battery charge threshold
After=multi-user.target

[Service]
Type=oneshot
ExecStart=/bin/bash -c 'echo 60 > /sys/class/power_supply/BAT0/charge_control_end_threshold'

[Install]
WantedBy=multi-user.target
EOF
sudo systemctl daemon-reload
sudo systemctl enable --now battery-charge-limit.service

git clone https://github.com/academo/ww-run-raise.git
cd ww-run-raise
sudo cp ww /usr/local/bin
## add open||focus shortcuts kwin
ww -f brave-browser -c brave-browser   #alt b
ww -f zen -c zen                       # alt z
ww -f kitty -c kitty                   # alt t
ww -f com.mitchellh.ghostty -c ghostty # alt return
# ww -f apidog -c apidog                 # alt appimage
ww -f code -c code               # ALT V
ww -f org.kde.dolphin -c dolphin # alt e
# ww -f notion-desktop -c /home/user/dir/notion.AppImage
ww -f brave-AppId-Default -c brave-browser #alt n
# normal shortuct appimage tldraw #alt d
ww -f org.kde.okular -c okular     # ALT R
ww -f mpv -c mpv                   # ALT Y
ww -f com.obsproject.Studio -c obs # alt o
# yazi?

~/.config/kwinrc
[Windows]
BorderlessMaximizedWindows=true
