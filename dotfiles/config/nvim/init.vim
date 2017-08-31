set nocompatible
let base16colorspace=256  " Access colors present in 256 colorspace
set nu
set mouse=a
" syntax enable
" File type
filetype plugin on 
filetype plugin indent on    " Enable filetype-specific plugins
"""""""""""""COMMON EDITOR RULES"""""""""""""""""""
set tabstop=4
set shiftwidth=4
set expandtab
set showmatch
""""""""""""""""""PLUGINS"""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
""""""""""""""""""NAVIGATION""""""""""""""""""""
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
""""""""""""""""""THEME""""""""""""""""""""""""""
Plug 'chriskempson/base16-vim'
Plug 'chriskempson/base16'
Plug 'jacoborus/tender'
""""""""""""""""""CODE COMMON""""""""""""""""""""
" Indent
Plug 'nathanaelkane/vim-indent-guides'
Plug 'raimondi/delimitmate' 
" Comments
Plug 'tpope/vim-commentary'
" References
Plug 'thinca/vim-ref'
""""""""""""""""""DOC RENDER""""""""""""""""""""
"Plug 'neovim/node-host' ", { 'do': 'npm install' }
"Plug 'vimlab/mdown.vim' ", { 'do': 'npm install ' }
" function! BuildComposer(info)
"     if a:info.status != 'unchanged' || a:info.force
        " !cargo build --release
    " endif
" endfunction
" Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }
" Plug 'suan/vim-instant-markdown'
Plug 'JamshedVesuna/vim-markdown-preview'
let vim_markdown_preview_github=1
""""""""""""""""""SYS & SHELL"""""""""""""""""""
" Fish shell
Plug 'dag/vim-fish'
" Tmux
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tmux-plugins/vim-tmux'
""""""""""""""""""BACKEND DEV"""""""""""""""""""""
" Python
Plug 'Glench/Vim-Jinja2-Syntax'
" Ruby
autocmd FileType ruby setlocal ts=2 sts=2 sw=2
Plug 'tpope/vim-endwise'
Plug 'vim-ruby/vim-ruby'
""""""""""""""""""FRONTEND WEB & UI""""""""""""""""
" HTML/XML Highlight
" Plug 'gregsexton/matchtag'
" Plug 'tpope/vim-ragtag'
autocmd FileType html setlocal ts=2 sts=2 sw=2
Plug 'ap/vim-css-color'
" JS/JSX
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'fleischie/vim-styled-components'
Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
"""""""""""""""""""TWEAKS""""""""""""""""""""""""""""
Plug 'autozimu/LanguageClient-neovim'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-clang'
Plug 'slashmili/alchemist.vim'
Plug 'wokalski/autocomplete-flow'
Plug 'carlitux/deoplete-ternjs'
Plug 'zchee/deoplete-jedi'
Plug 'wellle/tmux-complete.vim'
Plug 'thalesmello/webcomplete.vim'
let g:deoplete#enable_at_startup = 1
call plug#end()
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endi
syntax enable
colorscheme base16-twilight
let g:airline_theme = 'base16_twilight'
