execute pathogen#infect()

set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

set mouse=a
set backspace=indent,eol,start
set clipboard=unnamed
filetype on
syntax on
colorscheme Tomorrow-Night

set guifont=Hack\ Regular:h18
set wrap

set colorcolumn=90
set number
let mapleader=" "

map <leader>s :source ~/.vimrc<CR>

set showcmd
filetype indent on
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

set hlsearch

nnoremap <Leader><Leader> :e#<CR>

set showmatch " Highlight corresponding brackets

" Adding plugins - adds submodule so you can add config to another
" machine like so: git submodule init or git submodule update
" cd ~/.vim
" git submodule add git@github.com:vim-ruby/vim-ruby.git bundle/vim-ruby
" Reindex files created (not indexed by default in Command-T
noremap <Leader>r :CommandTFlush<CR>

" NerdTree

let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeMapActivateNode='<right>'
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>

set signcolumn=yes

" open files in new tab with Command T
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'

map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
map <C-t>n :tabnew<cr>

" Syntastic Eslint
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'

" NerdCommenter

filetype plugin on

" FZF
set rtp+=/usr/local/opt/fzf
