" Install plugins
call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'sbdchd/vim-hybrid'
Plug 'arcticicestudio/nord-vim'
Plug 'elmcast/elm-vim'
Plug 'kristijanhusak/vim-hybrid-material'
call plug#end()

" Show Syntax Highlighting
syntax on

" We're running VIM, not VI!
set nocompatible

" Wrap gitcommit file types at the appropriate length
filetype indent plugin on

" Show Trailing Whitespace
set list listchars=tab:▸\ ,trail:.

" Highlight Found Text
set hlsearch

" Tabs are two spaces
set tabstop=2

" A shift << >> is two spaces
set shiftwidth=2

" A tab in insert mode is two spaces
set expandtab

" Show Line Numbers
set number

" Complete settings
set wildmenu

" Use System Clipboard; handy
set clipboard=unnamed

" Splits occur to the right or down
set splitright
set splitbelow

" Various Mappings

" Lets Learn to Navigate - Arrow Keys Map to NOOPS
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Lets Navigate Windows with Standard Movements
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" Backup to ~/.vim/backup with full file names
set backup
set backupdir=~/.vim/backup//

" Keep undo history across sessions
set undodir=~/.vim/undo
set undofile

" Disable swap files
set updatecount=0

" Set our Colorscheme
set background=dark
colorscheme hybrid

" show a marker at 80th character
set colorcolumn=80

" Keep our window history when going to the background
set t_ti= t_te=

" Disable Ex Mode
map Q <Nop>

" Spellcheck md files
autocmd BufRead,BufNewFile *.md setlocal spell

" Spellcheck commits
autocmd FileType gitcommit setlocal spell

" Word complete
set complete+=kspell
