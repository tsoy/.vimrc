set rtp+=~/vimfiles/bundle/Vundle.vim/
call vundle#begin('~/vimfiles/bundle')

Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

Plugin 'L9'
Plugin 'FuzzyFinder'

" Ack Ubuntu istallation
" sudo apt-get install ack-grep
" sudo dpkg-divert --local --divert /usr/bin/ack --rename --add /usr/bin/ack-grep
" http://beyondgrep.com/install/
" Ack Windows installation
" To use ack  on Windows it's required to install it throug chocolatey
" https://github.com/chocolatey/chocolatey/wiki/Installation
" cinst ack

Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'

Plugin 'scrooloose/nerdtree'

Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'

call vundle#end()

set nocompatible
set number

" Tabs
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set encoding=utf8
set guifont=Anonymice\ Powerline:h13
"Anonymous Pro for Powerline

" No beep
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

colors solarized
syntax on

" Animals as leaders (Buffers as tabs for using airline plugin)
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

set laststatus=2
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" CTRL P plugin shortcut
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Tagbar plugin shortcut

nmap <F7> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
