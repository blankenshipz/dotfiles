## Apps

# Install homebrew
if ! hash brew 2>/dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew already installed!"
fi

# Install brew-bundle
brew tap Homebrew/bundle

echo "Installing from Brewfile"
# Install all the things! (see the Brewfile)
brew bundle

## VIM

echo "Setting up Vim"

# make sure the backup folder exists
mkdir -p $HOME/.vim/backup

# make sure the undo folder exists
mkdir -p $HOME/.vim/undo

# Install Plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Please install prezto https://github.com/sorin-ionescu/prezto"

