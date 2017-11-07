" 打开语法高亮
syntax enable

" 配色方案
colorscheme desert

" 字体、字号
set guifont=Courier\ New:h20

"显示行号	
set nu

"突出显示当前行
"set cursorline 

"搜索时智能忽略大小写。即如果搜索词全是小写，则忽略大小写，如果有一个大写则大小写敏感
set ignorecase smartcase

"渐近式匹配incremental search 即搜索时 则会自动把光标定位到匹配处"
set incsearch

"不高亮显示搜索到字符"
"set nohlsearch
set hlsearch

"按下esc键后取消搜索高亮
nnoremap <esc> : noh<return><esc>


"设置命令行的行数"
set cmdheight=2 

"设置tab键宽度
set tabstop=4
" 设置tab替换为空格
set expandtab

"设置每层缩进数
set shiftwidth=4

"=========================== vundle 配置 ================================
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

"Bundle 'Valloric/YouCompleteMe'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

