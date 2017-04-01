" Date: 2017-04-01
" Author: Michael Crilly

" Vundle related
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'vim-airline/vim-airline'

call vundle#end()
filetype plugin indent on

" Custom stuff by me
let mapleader = ","

" From here we're working from:
" https://gist.github.com/simonista/8703722
set nocompatible
filetype off
syntax on
filetype plugin indent on
set modelines=0
set number
set ruler
set visualbell
set encoding=utf-8
set wrap
set textwidth=79
set tabstop=2
set shiftwidth=2
set expandtab
set listchars=tab:▸\ ,eol:¬
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
" wget https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
colorscheme solarized


" From here we're working from:
" http://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/
" tab controls
nmap <leader>tn :enew<CR>
nmap <leader>tl :bnext<CR>
nmap <leader>tp :bprevious<CR>
nmap <leader>tc :bp <BAR> bd#<CR>
nmap <leader>ts :ls<CR>

" CntrlP bundle related config
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
let g:ctrlp_working_path_mode = 'r'

nmap <leader>p :CtrlP<CR>

" From here we're working from my twisted mind:
" window controls
nmap <leader>ws :split<CR>
nmap <leader>wc :q<CR>

" Load external bundles and stuff
" I aint using Vundle because it's another cog
" I can't be bothered understanding
set runtimepath^=~/.vim/bundle/ctrlp.vim
