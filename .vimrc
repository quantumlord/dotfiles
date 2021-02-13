"      ____    _
"     / ___|  / \       Ghazi Akel
"    | |  _  / _ \      https://github.com/quantumlord
"    | |_| |/ ___ \     vimrc
"    \____//_/   \_\
"

syntax on
filetype plugin indent on

set colorcolumn=81
set mouse=a
set nu rnu
set noshowmode
set nowrap
set shiftwidth=4
set smartcase
set smartindent
set tabstop=4 softtabstop=4
set undodir=~/vimfiles/undodir
set undofile

if has("gui_running")
    set guifont=Consolas:h11:cANSI
endif

autocmd InsertEnter * set nu nornu
autocmd InsertLeave * set nu rnu
autocmd WinEnter * set colorcolumn=81
autocmd WinLeave * set colorcolumn=0
autocmd WinEnter * set nu rnu
autocmd WinLeave * set nu nornu

set go-=m
set go-=T
set go-=r

call plug#begin()

    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'flazz/vim-colorschemes'
    Plug 'jiangmiao/auto-pairs'
    Plug 'johannesthyssen/vim-signit'
    Plug 'mbbill/undotree'
    Plug 'sheerun/vim-polyglot'
    Plug 'uiiaoo/java-syntax.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'wellle/context.vim'

call plug#end()

colorscheme Tomorrow-Night

nnoremap <C-u> :UndotreeToggle<cr>

let g:ctrlp_map = '<c-p>'

let g:context_enabled = 0
map <C-c> :ContextToggle<CR>

let g:airline_theme='tomorrow'
let g:airline#extensions#tabline#enabled = 1
