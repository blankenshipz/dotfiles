" Install plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
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

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

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
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
colorscheme hybrid

" show a marker at 80th character
set colorcolumn=80

" Keep our window history when going to the background
set t_ti= t_te=

" Disable Ex Mode
map Q <Nop>