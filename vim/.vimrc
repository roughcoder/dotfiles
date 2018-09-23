set nocompatible
set rtp+=/usr/local/opt/fzf

" Colors {{{
color dracula
syntax enable           " enable syntax processing
" }}}

" Spaces & Tabs {{{
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1
filetype indent on
filetype plugin on
set autoindent
set listchars=eol:↩,tab:→=,trail:·
set list
" }}}

" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set nocursorline        " highlight current line
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
set fillchars+=vert:┃
" }}}

" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/dist/* 
" }}}

" Window Splits {{{
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}"

" Folding {{{
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
nnoremap <space> za
set foldlevelstart=10   " start with fold level of 1
" }}}

" Vim Plug {{{
" Install vim-plug if we don't already have it
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Lokaltog/vim-easymotion'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/syntastic'
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'gorodinskiy/vim-coloresque'
Plug 'moll/vim-node'
Plug 'w0rp/ale'
Plug 'skywind3000/asyncrun.vim'
Plug 'tomtom/tcomment_vim'
Plug 'simnalamburt/vim-mundo'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mileszs/ack.vim'


filetype plugin indent on                   " required!
call plug#end()
" }}}"

" ALE {{{
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['eslint']
let g:ale_fix_on_save = 1
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
" }}}"

" AutoCmd {{{
" autocmcd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %
" }}}"

" Mundo {{{
set undofile " Enable persistent undo so that undo history persists across vim sessions
set undodir=~/.vim/undo
nnoremap <F5> :MundoToggle<CR>
" }}}"

" VimNode {{{
autocmd User Node
  \ if &filetype == "javascript" |
  \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
  \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
  \ endif
" }}}"

" NerdTree {{{
map <C-n> :NERDTreeToggle %<CR>
" }}}"

" Airline {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" }}}

nnoremap <c-f> :FZF<cr>
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:deoplete#enable_at_startup = 1
" LanguageClient {{{
set hidden

let g:LanguageClient_loggingFile = '/tmp/LanguageClient.log'
let g:LanguageClient_loggingLevel = 'INFO'
let g:LanguageClient_serverStderr = '/tmp/LanguageServer.log'

let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'python': ['pyls'],
    \ }

let g:LanguageClient_autoStart = 1
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" }}}"

" vim:foldmethod=marker:foldlevel=0
