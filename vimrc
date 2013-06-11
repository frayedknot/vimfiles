set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'scrooloose/nerdtree'
 Bundle 'scrooloose/nerdcommenter'
 Bundle 'wincent/Command-T'
 Bundle 'godlygeek/tabular'
 Bundle 'majutsushi/tagbar'
 Bundle 'tpope/vim-fugitive'
 Bundle 'nathanaelkane/vim-indent-guides'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'altercation/vim-colors-solarized'
 
 " vim-scripts repos
 Bundle 'L9'
 
 " non github repos
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

 " Set leader key
 :let mapleader = ","
 
 " Key mapping
 map <Leader>e :NERDTreeToggle<CR>
 nmap <F8> :TagbarToggle<CR>
 if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif
 
 " NerdTree {
 let NERDTreeShowBookmarks=1
 let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.o']
 let NERDTreeChDirMode=0
 let NERDTreeQuitOnOpen=1
 let NERDTreeMouseMode=2
 let NERDTreeShowHidden=1
 let NERDTreeKeepTreeInNewTab=1
 let g:nerdtree_tabs_open_on_gui_startup=0
 " }

 " VIM UI settings
 ":let g:solarized_termcolors=256
 "color solarized	" Load colorscheme
 ":let g:solarized_termtrans=1
 ":let g:solarized_contrast="high"
 ":let g:solarized_visibility="high"
 let g:molokai_termcolors=256
 color molokai
 let g:molokai_original=1
 let g:molokai=1
 let g:molokai_contrast="high"
 let g:molokai_visibility="high"
 set showmode       " display the current mode
 
 if !has('gui')
    set term=STERM	" Make arrow and other keys work
    set background=dark
 endif

 syntax on
 set mouse=a		" Auto enable mouse usage
 set mousehide		" hide cursor while typing
 scriptencoding utf-8
 set spell
 set history=1000
 set viewoptions=folds,options,cursor,unix,slash
 set hidden         " allow buffer switching without saving


 if has ('x') && has ('gui') " On Linux use + register for copy-paste
    set clipboard=unnamedplus
 elseif has ('gui')          " On mac and Windows, use * register for copy-paste
     set clipboard=unnamed
 endif

 set tabpagemax=15	" only show 15 tabs
 set showmode 		" show current mode
 set cursorline		" highlight current line
 set nu			" line numbers on

 " Formatting
 set nowrap		" wrap long lines
 set autoindent		" indent at same level as previous line
 set shiftwidth=4	" use indents of 4 spaces
 set expandtab		" tabs are spaces, not tabs
 set tabstop=4		" an indentation every 4 columns
 set softtabstop=4	" let backspace delete indent

