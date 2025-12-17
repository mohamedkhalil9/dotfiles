sudo dnf upgrade

sudo dnf install zsh
chsh -s $(which zsh)

# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"
# Download and install Node.js:
nvm install 24
# Verify the Node.js version:
node -v # Should print "v24.10.0".
# Download and install pnpm:
corepack enable pnpm
# Verify pnpm version:
pnpm -v

## setup dev env typescript, tsx, gemeni-cli, nest
pnpm install -g typescript tsx gemini-cli @nestjs/cli

# jetbrains nerd font

git config --global user.name "Mohamed Khalil"
git config --global user.email "mohamedkhalildev@gmail.com"
ssh-keygen -t ed25519 -C "mohamedkhalildev@gmail.com"
# ssh -T git@github.com

# clone dotfiles
git clone git@github.com:mohamedkhalil9/dotfiles.git
mv dotfiles/*.* ..

sudo dnf isntall ghostty tmux neovim lazygit btop fastfetch obs-studio mpv #vlc

sudo pacman -S yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide imagemagick
## mongodb & compass & notion & vs code
sudo pacman -S gparted xreader filezilla #superproductivity
