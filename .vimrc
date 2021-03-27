"      ____    _
"     / ___|  / \       Ghazi Akel
"    | |  _  / _ \      https://github.com/quantumlord
"    | |_| |/ ___ \     .vimrc
"    \____//_/   \_\
"

syntax on
filetype plugin indent on

set colorcolumn=81
set encoding=utf8
set expandtab
set hidden
set mouse=a
set nu rnu
set noshowmode
set nowrap
set shiftwidth=4
set signcolumn=number
set smartcase
set smartindent
set tabstop=4 softtabstop=4
set ttimeoutlen=0
set undodir=~/.vim/undodir
set undofile

autocmd VimEnter * hi Normal ctermbg=none
autocmd InsertEnter * set nu nornu
autocmd InsertLeave * set nu rnu
autocmd WinEnter * set colorcolumn=81
autocmd WinLeave * set colorcolumn=0
autocmd WinEnter * set nu rnu
autocmd WinLeave * set nu nornu

"Auto install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    silent !mkdir ~/.vim/undodir
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

    "Auto install plugins
    if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
        autocmd VimEnter * PlugInstall | q
    endif

    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'lervag/vimtex'
    Plug 'mbbill/undotree'
    Plug 'morhetz/gruvbox'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'wellle/context.vim'

call plug#end()

let g:gruvbox_transparent_bg='1'
set background=dark
colorscheme gruvbox

nnoremap <C-u> :UndotreeToggle<cr>

nnoremap <C-n> :NERDTreeToggle<CR>

let g:ctrlp_map = '<c-p>'

let g:context_enabled = 0
map <C-c> :ContextToggle<CR>

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
