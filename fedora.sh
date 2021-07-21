#!/bin/sh
#  / _| ___  __| | ___  _ __ __ _   ___| |__
# | |_ / _ \/ _` |/ _ \| '__/ _` | / __| '_ \
# |  _|  __/ (_| | (_) | | | (_| |_\__ \ | | |
# |_|  \___|\__,_|\___/|_|  \__,_(_)___/_| |_|

read -s -p "Enter Password for sudo: " sudoPW

# RPM fusion
echo $sudoPW | sudo -S dnf install -y \
	https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
echo $sudoPW | sudo -S dnf install -y \
	https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# dnf
echo $sudoPW | sudo -S dnf install -y \
	zsh \
	alacritty \
	kitty \
	poetry \
	conda \
	neovim \
	tmux \
	deja-dup \
	tldr \
	translate-shell \
	googler \
	gnome-tweaks \
	thunderbird \
	geary \
	util-linux-user \
	fzf \
	ripgrep \
	highlight \
	htop \
	foliate \
	mpg123 \
	ffmpeg \
	community-mysql-server \
	pandoc \
	neofetch \
	f33-backgrounds-gnome \
	cool-retro-term \
	gtypist \
	myman \
	openttd \
	ledger

# mysqld
echo $sudoPW | sudo -S systemctl start mysqld
echo $sudoPW | sudo -S systemctl enable mysqld

# flatpak
echo $sudoPW | sudo -S flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo $sudoPW | sudo -S flatpak install flathub com.calibre_ebook.calibre -y
echo $sudoPW | sudo -S flatpak install flathub com.spotify.Client -y
echo $sudoPW | sudo -S flatpak install flathub com.github.miguelmota.Cointop -y

# ranger
ranger --copy-config=all
cp $HOME/myconf/others/rc.conf $HOME/.config/ranger/ --remove-destination
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
echo "default_linemode devicons" >>$HOME/.config/ranger/rc.conf

# $HOME && $HOME/.config/
cp -r $HOME/myconf/dotfiles/. $HOME/
cp -r $HOME/myconf/config/. $HOME/.config/

# nerd font option 6 ad hoc curl download
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

# ohmyzsh & p10k
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/esc/conda-zsh-completion ~/.oh-my-zsh/custom/plugins/conda-zsh-completion
cp $HOME/myconf/others/tmux.plugin.zsh $HOME/.oh-my-zsh/plugins/tmux/ --remove-destination
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# fnm
# zsh -> curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell
curl -fsSL https://fnm.vercel.app/install | bash
source ~/.bashrc
fnm install --lts

# npm
npm install -g yarn
npm install -g prettier
npm install -g how-2
npm install -g wikit

# rbenv
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash

# Oh-My-Zsh poetry
mkdir $ZSH_CUSTOM/plugins/poetry
poetry completions zsh >$ZSH_CUSTOM/plugins/poetry/_poetry

# pip
pip install mycli
pip install ricksay
pip install ranger-fm
pip install pynvim           # for ranger to communicate with neovim terminal
pip install vimwiki-markdown # markdown2HTML

# upgrade
echo $sudoPW | sudo -S dnf upgrade -y
echo $sudoPW | sudo -S dnf autoremove -y

# change hostname
echo $sudoPW | sudo -S hostname Batcomputer
