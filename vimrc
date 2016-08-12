set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/The-NERD-tree'
Bundle 'slim-template/vim-slim.git'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-rails.git'

Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'tomtom/tcomment_vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-easytags'
Bundle 'tpope/vim-eunuch'
Bundle 'skwp/greplace.vim'
Bundle 'tpope/vim-surround'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'dkprice/vim-easygrep'
Bundle 'plasticboy/vim-markdown'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
filetype plugin indent on
"set numbers
set relativenumber

set nobackup
set tabstop=2 shiftwidth=2 expandtab
set guifont=Inconsolata\ 16
" LEADER
let mapleader = " "

" For indentation purpose only
map <Leader>i mmgg=G`m<CR>
"end of indentation map
"map for pasting
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>
" NERD TREE SETTINGS
map <Leader>N :NERDTreeToggle<CR>
" Search settings
set incsearch
set hlsearch
nmap <Leader>h :nohlsearch<cr>
set ignorecase
set smartcase
" Git settings for vi
autocmd Filetype gitcommit setlocal spell textwidth=72

" Split settings
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999
map <Leader>v :windo wincmd H <CR>
set splitbelow
set splitright " Naturally open the splits into the right


" Stripe whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
" Show status always
set ls=2

" VIM RSPEC CONFIGURATIONS
" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>
" let g:rspec_command = '!bundle exec rspec {spec}'
"let g:rspec_command = '!time spring spec {spec}'
map <Leader>r :Rake<CR>
map <leader> C :w !pbcopy<CR>
map <leader> P :w !pbpaste<CR>
" Matchit enable
runtime macros/matchit.vim

" MARKDOWN SYNTAX
set nofoldenable

" shows column at 81 characters
set cc=81
