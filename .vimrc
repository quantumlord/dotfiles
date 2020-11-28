"      ____    _
"     / ___|  / \       Ghazi Akel
"    | |  _  / _ \      https://github.com/quantumlord
"    | |_| |/ ___ \     vimrc
"    \____//_/   \_\
"
syntax on
filetype plugin indent on

set colorcolumn=81
set expandtab
set hidden
set mouse=a
set noshowmode
set nowrap
set shiftwidth=4
set shortmess+=c
set signcolumn=number
set smartcase
set smartindent
set tabstop=4 softtabstop=4
set timeoutlen=1000
set ttimeoutlen=0
set undodir=~/.vim/undodir
set undofile
set updatetime=300

autocmd InsertEnter * set nu nornu
autocmd InsertLeave * set nu rnu
autocmd WinEnter * set colorcolumn=81
autocmd WinLeave * set colorcolumn=0
autocmd WinEnter * set nu rnu
autocmd WinLeave * set nu nornu

function! ExitNormalMode()
    unmap <buffer> <silent> <RightMouse>
    call feedkeys("a")
endfunction

function! EnterNormalMode()
    if &buftype == 'terminal' && mode('') == 't'
        call feedkeys("\<c-w>N")
        call feedkeys("\<c-y>")
        map <buffer> <silent> <LeftMouse> :call ExitNormalMode()<CR>
    endif
endfunction

tmap <silent> <ScrollWheelUp> <c-w>:call EnterNormalMode()<CR>

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
    Plug 'flazz/vim-colorschemes'
    Plug 'jiangmiao/auto-pairs'
    Plug 'johannesthyssen/vim-signit'
    Plug 'mbbill/undotree'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
