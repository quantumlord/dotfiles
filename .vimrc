filetype plugin indent on
syntax on

set expandtab
set hidden
set mouse=a
set noshowmode
set nowrap
set nu rnu
set shiftwidth=4
set shortmess+=c
set signcolumn=number
set smartcase
set smartindent
set tabstop=4 softtabstop=4
set timeoutlen=1000
set ttimeoutlen=5
set undodir=~/.vim/undodir
set undofile
set updatetime=300

augroup focus
    autocmd!
    autocmd WinEnter * set colorcolumn=81
    autocmd WinLeave * set colorcolumn=0
augroup END

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
    Plug 'jeffkreeftmeijer/vim-numbertoggle'
    Plug 'jiangmiao/auto-pairs'
    Plug 'mbbill/undotree'
    Plug 'mhinz/vim-signify'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'sainnhe/gruvbox-material'
    Plug 'scrooloose/nerdtree'
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-fugitive'
    Plug 'uiiaoo/java-syntax.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'wellle/context.vim'

call plug#end()

set termguicolors
set background=dark
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material

map <C-n> :NERDTreeToggle<CR>

nnoremap <C-u> :UndotreeToggle<cr>

let g:ctrlp_map = '<c-p>'

let g:context_enabled = 0
map <C-c> :ContextToggle<CR>

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
