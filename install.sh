# Install Package Manager
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Applications
brew install vim
brew install tmux

# Install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install fonts
git clone https://github.com/powerline/fonts.git --depth=1 ./fonts-install
cd fonts-install
bash install.sh
cd ..
rm -rf fonts-install

# Make sure files dont already exist
rm ~/.zshrc
rm ~/.vimrc
rm -rf ~/.vim
rm ~/.tmux.conf

# Create links
ln -s "$PWD/zshrc" ~/.zshrc
ln -s "$PWD/vimrc" ~/.vimrc
ln -s "$PWD/tmux.conf" ~/.tmux.conf
ln -s "$PWD/vim/" ~/.vim
