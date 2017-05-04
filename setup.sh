## VIM

# make sure the backup folder exists
mkdir -p $HOME/.vim/backup

# make sure the undo folder exists
mkdir -p $HOME/.vim/undo

# Install Plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
