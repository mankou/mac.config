"author:mang
"last modify::2014-02-28 19:54:09
"����mac��vim������
"#########�淶˵��####################
"������2012-04-26
"���ñ���ο���#########Vimwiki�������#########  vimwiki��ǰ���#��֮�䲻Ҫ���κε��ַ���vimwiki֮����������Ӻ��֣��Է����Ķ�����������Ŀ�����Ժ����ͨ������ #Vimwiki ���ٶ�λ��vimwiki��������
"Ŀǰ�� �淶˵�� ȫ������ vimwiki calendar Voom ��ݼ����� 4��������
"�Զ���Ŀ�ݼ��ڸ��������壬��vimwiki�Ŀ�ݼ���vimwiki���������塣��Ϊ���Ժ����鿴���㣬Ҫ�����õĿ�ݼ���ע�͵ķ�ʽ�� #######��ݼ�����##### ���򱸷�һ��
"һ������¸����������ӵ����÷��ڸ�����ĺ��棬���ʱ����append ���������ٶ�λ��Ҫ��ӵ�λ�á���Ϊvimwiki������������� append vimwiki �ɿ��ٶ�λ�����λ�á�
"ÿ���޸���_vimrc Ҫ����last modify �Ա�dorm lab�˶��Ƿ�Ϊͬһ�汾��
"append��standard���淶˵�����������#######
"##########hotkey ��ݼ�����####################
"------�·������Զ���Ŀ�ݼ����Ѿ��ڸ����������ã�����Ϊ���Ժ�����㣬Ϊ�˷�ֹ�Ժ����ÿ�ݼ���ͻ���������Ｏ��������
"-------ȫ��
	"map ,mdc : <esc>: cd E:\CodeSpace\C\mangCExercise_Vim<cr>
	"map ,mc : <esc>:!..\..\copyNext.bat
	"map ,mc2: <esc>:!D:\shortcut\commonTools\copyLog\copyLog.bat
	":nnoremap ,mt "=strftime("%c")<CR>p
	":nnoremap ,mtt "=strftime("%H:%M")<CR>p
	":map ,mg a`<esc>,mttw<esc>
	"map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> 
"-------vimwiki
	"map ,ms : <esc>:VimwikiSearch
	"map ,mn : <esc>:lnext <Return>
	"map ,mp : <esc>:lprevious <Return>
	"map ,mo : <esc>:lopen <Return>
	"map ,w :w<cr>
	"map ,q :wq<cr>
"-------Voom
	"map \f <esc><LocalLeader><LocalLeader>:q<return> 
"-------Taglist
	"nnoremap <silent>  tg :TlistToggle<CR>
	"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> 
"------winManager
	"nmap wm :WMToggle<cr>
"------nerdtree
	"nmap <F3> :NERDTree  <CR>
"------Minibufexplorer
	"noremap Q :CMiniBufExplorer<CR>:q<CR>
	"noremap tm :TMiniBufExplorer<CR>  
"------bufexplorer
	":nmap <C-right> :<esc><C-l>:q<cr>
	":nmap <C-left> :<esc><C-h>:q<cr>
"------project
	"nmap <silent> <Leader>P <Plug>ToggleProject
"-------program
	"map <F5> :call Do_OneFileMake()<CR>
	"map <F6> :!make<CR>
	"map <c-F6> :!make clean<CR>
	"autocmd FileType c,cpp  map <buffer> <leader><space> :w<cr>:silent make<cr>:copen 5<cr>
	"nmap <F7> :cp<cr>
	"nmap <F8> :cn<cr>
	"map <C-F5> :call Debug()<CR>
	"nmap <leader>cw   :cw 5<cr>
	"nmap q :close<cr>
"---------vimim
	"CTRL+ ^ ���������뷨���л�
	"CTRL+ - ��/�ر��������뷨
	"CTRL+ H �˸�
"append hotkey hotkye�������������

"-----------------------------------------------------------------------------
"������������$VIMRUNTIME/vimrc_example.vim
"���������Ͽ���˵Ҫ��������׼���ù���
"-----------------------------------------------------------------------------

" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2011 Apr 15
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
"��Insertģʽ�£�����Backspace�����ɾ�����ǰ�ߵ��ַ�����������ֵ�ֱ��ʾ�հ��ַ������з��Ͳ���ģʽ֮ǰ���ַ���  
set backspace=indent,eol,start


if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
" CTRL-U ��Insertģʽ�¿���ɾ����ǰ���������������֮ǰ�������ַ�.  Insertģʽ�£���Enter����֮�󣬿�������ʹ��CTRL-U����ɾ�����з���  
inoremap <C-U> <C-G>u<C-U> 
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif





"-----------------------------------------------------------------------------
"�������ҵ�����--vimȫ������
"-----------------------------------------------------------------------------
"pathogen �����ã�pathogen���ڹ��������Ժ�װ�����bundleĿ¼�¾�ok.
call pathogen#infect()


"vim�����������ļ��������ļ������~/vimtmp Ŀ¼�¡�����windowsϵͳ����~Ŀ¼ָ����C:\Documents and Settings\�û���
"set backup
"set writebackup
"set backupdir=~/.vimtmp/
set nobackup


"ע�͵���һ����Ϊ��vim��ctrl+v����windows�ĳ�ͻ��
"source $VIMRUNTIME/mswin.vim
behave mswin
set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '8+-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"-----------------------------------------------------------------------------------
"������ص�����
"-----------------------------------------------------------------------------------
"����ʱ���ܺ��Դ�Сд�������������ȫ��Сд������Դ�Сд�������һ����д���Сд����
set ignorecase smartcase
"����ʽƥ��incremental search ������ʱ ����Զ��ѹ�궨λ��ƥ�䴦"
set incsearch
"��������ʾ�������ַ�"
"set nohlsearch
"����esc����ȡ����������
nnoremap <esc> : noh<return><esc>



" ���﷨����
syntax enable
" ��ɫ����
"colorscheme desert
set background=dark
colorscheme solarized
" ���塢�ֺ�
set guifont=Courier\ New:h20


"��ʾ�к�	
set nu
"�����Զ�����
set wrap
"�����Զ�����
set ai!  
"ͻ����ʾ��ǰ��
set cursorline 
"���������е�����"
set cmdheight=2 


"��ʾ�����ַ�"
"set list
"����tab�����
set tabstop=4
"����ÿ��������
set shiftwidth=4

"�Զ��л�Ŀ¼����ǰ�༭���ļ�����·��
set autochdir
"-----------------------------------------------------------------------------------
"�������
"-----------------------------------------------------------------------------------
"����5���������gVim�˵������Ҽ��˵���������"
set encoding=utf8
set langmenu=zh_CN.UTF-8
set imcmdline
source $VIMRUNTIME/delmenu.vim "������䣬�˵�����
source $VIMRUNTIME/menu.vim
" ���gVim����ʾ������
language message zh_CN.UTF-8
"�������������bat��������ģ�Ҳ��֪���Ƿ���Ч������������������������������ĵ��ı�ʱ��ʾ������
"set fenc=chinese
"Ҳ��֪��ΪʲôҪ�������ɻ��Ǽ����ˡ�fencs�����ļ�ʱ�²�����ʽ���б�
set fileencodings=utf-8,gb2312,ucs-bom,euc-cn,euc-tw,gb18030,gbk,cp936


"-----------------------------------------------------------------------------------
" ######### ����ƥ�� ######### "
"-----------------------------------------------------------------------------------
" ��ʾƥ�������
set showmatch
" �������š������Զ����
:inoremap ( ()<ESC>i
:inoremap ) c-r>=ClosePair(')')<CR>
"ע�͵�ԭ��Ϊ������Voom�Ŀ�ݼ�[1 [2 [3
":inoremap { {}<ESC>i
":inoremap } <c-r>=ClosePair('')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap < <><ESC>i
	
:inoremap > <c-r>=ClosePair('>')<CR>
":inoremap " <ESC>i
:inoremap ' ''<ESC>i
:inoremap ` ``<ESC>i
function ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endf


"���ÿ��ٲ��뵱ǰ���ڼ�ʱ��
"P��ʾ��ʱ����뵽��ǰ���ǰ��,p��ʾ��ʱ����뵽��ǰ������
:nnoremap ,mt "=strftime("%Y-%m-%d %H:%M:%S")<CR>p
"���ÿ��ٲ��뵱ǰʱ��Ŀ�ݼ�,ע������Ǵ�д��H��M,Сд��������
:nnoremap ,mtt "=strftime("%H:%M")<CR>p
"���ÿ��ٲ��� ����`19:20`��ʽ��ʱ�� ,mt��ݼ� a`��ʾ����` Ȼ��ص�һ��ģʽ��Ȼ��,mtt ����ʱ�� Ȼ��w ��������һ����
:map ,mg a`<esc>,mttw<esc>


"ӳ����ٹرտ�ݼ�
map ,w :w<cr>
map ,q :wq<cr>

"ӳ����ٸ��ơ�ճ�����а�Ŀ�ݼ�
map ,p "+p
map ,y "+y
"���� . ������ѡ��ģʽ�¡�����ǰ�����ظ�ֻ��һ��һ�е��ظ������ڿ���һ��ѡ���ظ���
vnoremap . :normal .<CR>


" ��������_vimrc�Ŀ�ݼ�
:nmap <Leader>s :source $MYVIMRC
" ���ٴ�_vimrc, Ҳ��ʹ��:tabedit $MYVIMRC
:nmap <Leader>v :e $MYVIMRC<cr>

"�Զ���ȫ֮�ֵ䲹ȫ Ctrl+X Ctrl+K 
"��dict.txt�ļ��п����Զ����Զ���ȫ�ĵ��� ��<red> <modify>
set dict=~/.vim/dict.txt


"Ĭ�Ϸָ�ڵ��л���Ҫ Ctrl+w �������������ʹ�ã�����������Ҿ��ø��ӷ���һЩ��
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Ĭ�����ز˵����͹�����������ͨ�� <F10> �л���ʾ�����ء�
" @see http://www.linuxeden.com/html/softuse/20080331/52958.html  
"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
map <silent> <F10> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>

"pentadacty ��ɫ���á������Ժ��_pentadactyrcy�����﷨��ɫ��
au BufRead,BufNewFile _pentadactylrc set filetype=pentadactyl

"ʹ "p" ������Visualģʽ���ÿ������ַ����Ǳ�ѡ�е��ַ���  
vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc> 

"-----------------------------------------------------------------------------
"Vimwik�������
"-----------------------------------------------------------------------------

"�������ݼ���2011��8��11��18ʱ40��54��
"��װ�ٷ��ĵ���Ҫ����Ҫȷ�� vimrc �ļ��������µ����� Ҳ��֪��Ϊʲô
set nocompatible
filetype plugin on "��Բ�ͬ�ļ����͵���Ӧplugin, �����ʹ�ø������������Ӧ��
syntax on
let $VIMHOME = '~/AppData/Dropbox/wiki'
"����wiki·��
let g:vimwiki_list = [
	\{
		\'path': $VIMHOME.'/wiki1',
		\ 'path_html':$VIMHOME.'/wiki1/html/',
 		\ 'template_path': '$VIMHOME/templates/',
        \ 'template_default': 'default',
        \ 'template_ext': '.html',	
		\ 'index': 'main',
		\'syntax': 'default',
		\ 'nested_syntaxes': {'C': 'c'},
	\},
	\{
		\ 'path': $VIMHOME.'/wikitest',
		\ 'path_html': $VIMHOME.'/wikitest/html/',
 		\ 'template_path': '$VIMHOME/templates/',
        \ 'template_default': 'default',
        \ 'template_ext': '.html',	
		\ 'index': 'main',
		\ 'nested_syntaxes': {'C': 'c'},
	\},
	\{
		\'path': $VIMHOME.'/work',
		\ 'path_html':$VIMHOME.'/work/html/',
 		\ 'template_path': '$VIMHOME/templates/',
        \ 'template_default': 'default',
        \ 'template_ext': '.html',	
		\ 'index': 'main',
		\'syntax': 'default',
		\ 'nested_syntaxes': {'C': 'c'},
	\},
	\{
		\'path': $VIMHOME.'/linuxwiki',
		\ 'path_html':$VIMHOME.'/linuxwiki/html/',
 		\ 'template_path': '$VIMHOME/templates/',
        \ 'template_default': 'default',
        \ 'template_ext': '.html',	
		\ 'index': 'main',
		\'syntax': 'default',
		\ 'nested_syntaxes': {'C': 'c'},
	\},
	\{
		\'path': $VIMHOME.'/ithink',
		\ 'path_html':$VIMHOME.'/ithink/html/',
 		\ 'template_path': '$VIMHOME/templates/',
        \ 'template_default': 'HaveNoHead',
        \ 'template_ext': '.html',	
		\ 'index': 'ithink',
		\'syntax': 'default',
		\ 'nested_syntaxes': {'C': 'c'},
		\},
		\{
			\'path': $VIMHOME.'/blog/mankou/wiki',
			\ 'path_html':$VIMHOME.'/blog/mankou/_posts/',
			\ 'template_path': '$VIMHOME/templates/',
			\ 'template_default': 'HaveNoHead',
			\ 'template_ext': '.html',	
			\ 'index': 'mankoublog',
			\'syntax': 'default',
			\ 'nested_syntaxes': {'C': 'c'},
		\},
\]
"����vimwiki���������ɫ������1-����6�ֱ��Ǻ���������ƣ�ע��������vim����ʾ����ɫ����������ҳ����ʾ����ɫ��
	"������ɫ��Ŀ�ģ���Ϊ�����Voom������ǰΪVoom�Զ����˸���ɫ�������ļ���$Vimhome/vimfiles/syntax/Voomtxt.wiki {���ڰ�װ��pathegon��������Ը��ļ�·��Ϊ$Vimhome/vimfiles/bundle/Voom/syntax ���û��syntaxĿ¼�Ļ����Լ��½�}-4 ��������ҲΪvimwiki���ù���ɫ��vimwikiĬ�ϵ���ɫ����������ӣ���ʹ��ʱ��Ҫÿ���������� set ft=Voomtxt�����ܿ�����ɫ��Ч����ʹ�������Ƚ��鷳������Ҳ�����voomtxt����vimwiki����ɫ����ɾ������Ϊ�˱����Լ����Ͷ��ɹ���������vimwiki��Ҳ��������������ͬ����ɫ��������ʹ�õ���VimwikiĬ�ϵ���ɫ��������������Voomtxt.wiki��Ϊwimwiki��������ɫ����ʹ��voomtxt�ֲ��Ǻܷ��㣬����Ϊ������voomtxt����ɫ�����������vimwiki����ɫ�������ó���voomtxtһ������ɫ������
:hi VimwikiHeader1 guifg=#FF0000
:hi VimwikiHeader2 guifg=#00FF00
:hi VimwikiHeader3 guifg=#0000FF
:hi VimwikiHeader4 guifg=#FF00FF
:hi VimwikiHeader5 guifg=#00FFFF
:hi VimwikiHeader6 guifg=#FFFF00
"������vimwiki�п���ʹ�õ�html��ǩ
let g:vimwiki_valid_html_tags='b,i,s,u,small,sub,sup,kbd,br,hr,div,del,code,red,green,modify,center,left,right,h4,h5,h6,a,small,pre,ol'
"����Ĭ�ϴ�html�����������������\whh ʱ���Զ�����ǰwikiת����html�������������html
let g:vimwiki_browsers='/usr/bin/firefox'
" ʹ�����ӳ��  
let g:vimwiki_use_mouse = 1
" �Ƿ��շ�ʽ������Ϊ Wiki ���� 1�� 0�� Ĭ����1
let g:vimwiki_camel_case = 0
" ���Ϊ��ɵ� checkist ��Ŀ�����ر����ɫ 
let g:vimwiki_hl_cb_checked = 1 
" F4��ǰҳ����HTML��Shift+F4 ȫ��ҳ����HTML 
map <S-F4> :VimwikiAll2HTML<cr> 
map <F4> :Vimwiki2HTML<cr> 
"�����л������б�Ŀ�ݼ�
map <leader>tt <Plug>VimwikiToggleListItem
" ��һ�� vimwiki �˵���
let g:vimwiki_menu = 'Vimwiki' 
" �Ƿ������﷨�۵� �����ļ��Ƚ��� 
let g:vimwiki_folding = 1 
"�������б����۵����ܣ�����Ҳû��������ʲôЧ��
let g:vimwiki_fold_lists = 1
"�����html�Ƿ��Զ���š� Ĭ��Ϊ0�� 0 �ر�, 1 ��һ�����⿪ʼ ,2 �Ӷ������⿪ʼ  ��������
let g:vimwiki_html_header_numbering =1
"��һ��û�и�ѡ����б���Ŀ�ϰ���\tt(�Լ����õ��ȼ�)����Դ����б��Ĭ����1
let g:vimwiki_auto_checkbox = 1
"ʹ��Ԥ�ȶ������ɫ������ͬ����ı��� =Reddish=, ==Greenish==, ===Blueish===
let g:vimwiki_hl_headers = 1
"�Զ���ʽ�����
let g:vimwiki_table_auto_fmt = 1
"����vimwiki�²��ҵĿ�ݼ� s����search
map ,ms : <esc>:VimwikiSearch
"����vimwiki���Һ�����Ŀ�ݼ� ��mn������ʾ��һ��ƥ���� mp������ʾǰһ��ƥ���� lm������ʾ����ƥ����.ԭ�����õ���ln lp lo����������l�ǹ�������ƶ��ļ��������ָĳ�m��
map ,mn : <esc>:lnext <Return>
map ,mp : <esc>:lprevious <Return>
map ,mo : <esc>:lopen <Return>



"-----------------------------------------------------------------------------
" calender������
" create:2011��10��24��
"-----------------------------------------------------------------------------
"�����ռ�·���ģ����ǲ��飬��������Ϊvimwiki��ԭ��
"let g:calendar_diary = "E:/diary"
"�����ȼ������ٵ���Calendar���
map ca :Calendar<cr>
"������һΪ��ʼ 
let g:calendar_monday = 1
"ʹ*����������.����������棬��right
let g:calendar_mark = 'left' 
"������*�����ֿ��ĸ���һЩ
let g:calendar_mark = 'left-fit'
"��ʾ�ڼ��ܡ�ÿ��1��1��Ϊ��һ��
let g:calendar_weeknm = 1 " WK01
"append calendar calendar�������������


"-----------------------------------------------------------------------------
" Voom����
" create:2011��12��19��
"-----------------------------------------------------------------------------

"����Tree���Ŀ��
let g:voom_tree_width=20
"����Ϊvimwiki���ٳ���Voom����Ŀ�ݼ�,һ����vimwiki�� һ����һ���
map <LocalLeader><LocalLeader>w :Voom vimwiki<CR>
nnoremap <LocalLeader><LocalLeader> :Voom<CR>
"���÷��ؼ���Ĭ����<Return>�������س���������vimwiki�»��ͻ�����Ե����������
let g:voom_return_key = '<C-Return>'
"���õ�ת��������Tree����body����������Ĭ����<Tab>��������vimwiki��ԭ������������<C-Tab>
let g:voom_tab_key = '<C-Tab>'
"������ӱ���Ŀ�ݼ�
imap \[1 <esc>$a {{{1
map \[1 <esc>$a {{{1
imap \[2 <esc>$a {{{2
map \[2 <esc>$a {{{2
imap \[3 <esc>$a {{{3
map \[3 <esc>$a {{{3
"ɾ��{{{1 {{{2 {{{3 �Ŀ�ݼ�
map }  <esc>:s/{{{\d//g <CR>
 "���ñ�����ɫ���������ļ�·��Ϊ��$vimhome/vimfiles/syntax/Voomtxt.vim ����ı�����ָvimwiki�еı����Լ�Voom�еı�
 "�������Voom�е������ȫ�ֵ���������õ�Ч����Ϊ��Voom��
 "�����ö���ֱ�Ӵ�vimwiki��������������ã���Ҫ���������������� :set ft=Voomtxt  �Żῴ����ɫЧ������Ȼ�Ⲣ��Ӱ��ʵ��ʹ�á�������ֻ��gvim�ĵ�����vimwiki�����ȴ����Ч�ģ������� =1  1�ǻ���ɫ�ġ�
set ft=Voomtxt
"����ȫ���Ŀ�ݼ�
 "�����ڱ༭��ʱ������ȷʹ�ã���Ϊ\\���ڱ༭����tree���л��������ǰ��tree������ִ���·���ݼ��Ľ���ǹص��༭����
map \f <esc><LocalLeader><LocalLeader>:q<return> 



"-----------------------------------------------------------------------------
" Taglist������
"����Taglist��ctagsΪ�����������������Щ����ctags������
"create:2012��5��16��
"-----------------------------------------------------------------------------
"ӳ���Զ�����tags�ļ��Ŀ�ݼ�
"@see http://blog.csdn.net/bokee/article/details/6633193
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> 
"����Ҳ��֪��ʲô��˼������˵�ģ�Ҳ���������ˡ�
set tags=tags;
"����ctags.exe��·������ȻҲ��ֱ�Ӽӵ�ϵͳ�Ļ��������У�����Ͳ��������ˡ�������������vim���Ŀ¼�£�����Ϊprogram�пո�û�гɹ������Ծ�������һ��û�пո��·����
"ע���·�·����/ ������\ windows·���ָ�����\��ʾ����Ҫ��\��Ӧ��������\ ��\\
"let Tlist_Ctags_Cmd ="D:/Program\ Files/Vim/vimfiles/bundle/ctags/ctags.exe"
let Tlist_Ctags_Cmd ="E:/ApplicationData/netDisk/klive/application/ctags/ctags.exe"
"��ͬʱ��ʾ����ļ���tag��ֻ��ʾ��ǰ�ļ���
let Tlist_Show_One_File = 1
"���taglist���������һ�����ڣ����˳�vim
let Tlist_Exit_OnlyWindow = 1
"��vimʱ�Զ���Tlist���ڣ���������ļ������й�.�磺����򿪵���cpp�ļ������Զ���Tlist �����txt�ļ����򲻻��Զ��򿪡���Ϊ����WinManager���������Զ�����Tlist���ڣ�������wm ������������������͹ر���
"let Tlist_Auto_Open = 1
"ӳ���Tlist���ڵĿ�ݼ�
nnoremap <silent>  tg :TlistToggle<CR>
"����Tlist���ڴ�С
let Tlist_WinWidth = 10



"-----------------------------------------------------------------------------
" winManager������ 
"
"-----------------------------------------------------------------------------
"ͨ��WinManager�������TagList���ں�netrw������������
let g:winManagerWindowLayout='FileExplorer|TagList'
"ӳ��wm�Ŀ�ݼ�
nmap wm :WMToggle<cr>
"���ұߴ��ڹش�ʱ���Զ��ر�wm����
let g:persistentBehaviour=0
"����wm���ڿ��
let g:winManagerWidth=10



"-----------------------------------------------------------------------------
"program ���롢���г�������
"��quickfix�������롢����������أ���������Ҳ��quickfix������
"create 09:59 2012-5-17
"-----------------------------------------------------------------------------
"������δ������������ϡ�VIM-һ�����뵥��Դ�ļ���http://www.vimer.cn/2009/10/11.html�������¿�ݼ�ʱ�������򲢴򿪴��󴰿ڡ�������һ���Ǳ��뵥���ļ���һ���Ǳ������ļ���
 "iswindows�Ƕ����һ��ȫ�ֱ����������ж�ϵͳ��linux����windows
if(has("win32") || has("win95") || has("win64") || has("win16"))
    let g:iswindows=1
else
    let g:iswindows=0
endif
 "�����ļ�����,����д���ʾ�����ڡ����û��ֱ�����С�
 "2012��5��18���޸Ĺ�һ�� ��gcc����Ĳ����ϼ��˸�-Wall ����һ��������ʾ��������һ�С�
map <F5> :call Do_OneFileMake()<CR>
function Do_OneFileMake()
    if expand("%:p:h")!=getcwd()
        echohl WarningMsg | echo "Fail to make! This file is not in the current dir! Press <F7> to redirect to the dir of this file." | echohl None
        return
    endif
    let sourcefileename=expand("%:t")
    if (sourcefileename=="" || (&filetype!="cpp" && &filetype!="c"))
        echohl WarningMsg | echo "Fail to make! Please select the right file!" | echohl None
        return
    endif
    let deletedspacefilename=substitute(sourcefileename,' ','','g')
    if strlen(deletedspacefilename)!=strlen(sourcefileename)
        echohl WarningMsg | echo "Fail to make! Please delete the spaces in the filename!" | echohl None
        return
    endif
    if &filetype=="c"
        if g:iswindows==1
            set makeprg=gcc\ -Wall\ -o\ %<.exe\ %
        else
            set makeprg=gcc\ Wall\ -o\ %<\ %
        endif
    elseif &filetype=="cpp"
        if g:iswindows==1
            set makeprg=g++\ -Wall\ -o\ %<.exe\ %
        else
            set makeprg=g++\ -Wall\ -o\ %<\ %
        endif
        "elseif &filetype=="cs"
        "set makeprg=csc\ \/nologo\ \/out:%<.exe\ %
    endif
    if(g:iswindows==1)
        let outfilename=substitute(sourcefileename,'\(\.[^.]*\)' ,'.exe','g')
        let toexename=outfilename
    else
        let outfilename=substitute(sourcefileename,'\(\.[^.]*\)' ,'','g')
        let toexename=outfilename
    endif
    if filereadable(outfilename)
        if(g:iswindows==1)
            let outdeletedsuccess=delete(getcwd()."\\".outfilename)
        else
            let outdeletedsuccess=delete("./".outfilename)
        endif
        if(outdeletedsuccess!=0)
            set makeprg=make
            echohl WarningMsg | echo "Fail to make! I cannot delete the ".outfilename | echohl None
            return
        endif
    endif
    execute "silent make"
    set makeprg=make
    execute "normal :"
    if filereadable(outfilename)
        if(g:iswindows==1)
            execute "!".toexename
        else
            execute "!./".toexename
        endif
    endif
    execute "copen 5"
endfunction
"ʹ��make���롣ע��ֻ���벻���С�����������ģʽ��
"�����һ���������ǰ�õ�,ִ����make���ѽ�������quickfix���ڡ����򴰿�̫С��������ˬ��������c.vim�� ,rm ����ִ��make��������������õĲ��ࡣ����c.vim�� ,rm�����õ�Ҳ��ˬ�������Ҳ�����ô���ˣ���ֱ�Ӳ鿴makeִ�������Ĵ��ڣ����԰�������Ǿ仰ע���ˡ��ĳ�ֱ�ӵ����ⲿ����
"map <F6> :call Do_make()<CR>
map <F6> :!make<CR>
"ִ��make clean
map <c-F6> :!make clean<CR>
"������ǰ������ִ��make clean�Ĵ��룬�������Ų�ˬ�ˣ����Ի���ֱ�������������������
"map <c-F6> :silent make clean<CR>
"function Do_make()
"    set makeprg=make
"    execute "silent make"
"    execute "copen 5"
"endfunction
"ӳ����ٱ���Ŀ�ݼ�,ע��ֻ���벻���г���<F5>�������뻹���У�����ֻ���롣��������Ϊ��c�����������������Ŀ�ݼ�
"autocmd FileType c,cpp  map <buffer> <leader><space> :w<cr>:silent make<cr>:copen 5<cr>
"ӳ��������е�ǰĿ¼��main.exe�Ŀ�ݼ�
nmap <leader><space> :!.\main.exe<cr>
"ӳ�䡡�򿪹ر�quickfix���ڡ��Ŀ�ݼ�
nmap <leader>cw   :cw 5<cr>
nmap <leader>cc   :ccl<cr>
"��Cscope�Ĳ��ҽ�������quickfix����
"@see http://blog.csdn.net/bokee/article/details/6633193 
set cscopequickfix=s-,c-,d-,i-,t-,e-
"ӳ����һ����ǰһ������Ŀ�ݼ�
nmap <F7> :cp<cr>
nmap <F8> :cn<cr>
"ӳ���˳�quickfix���ڵĿ�ݼ�
"��Ϊq��¼�ƺ��ݼ���ͻ����������ע�������ͨ��<leader>cc�ر�quickfix
"nmap q :close<cr>
"ӳ��debug�Ŀ�ݼ�
map <C-F5> :call Debug()<CR>
"����Debug�������������Գ���
func Debug()
exec "w"
"C����
if &filetype == 'c'
exec "!gcc % -g -o %<.exe"
exec "!gdb %<.exe"
elseif &filetype == 'cpp'
exec "!gcc % -g -o %<.exe"
exec "!gdb %<.exe"
"Java����
elseif &filetype == 'java'
exec "!javac %"
exec "!jdb %<"
endif
endfunc
"��������Debug
"����makeprg
"��������û���û�ã�ֻ�ǰ���ǰ���ֵ������뱣���������ѡ�
"��ʹ��:makeʱ��vim���Զ����á�makeprg��ѡ����������б��룬���ѱ�������ض���һ����ʱ�ļ��У���������ִ���ʱ��vim���������ʱ�ļ��ж���������Ϣ
"set makeprg=make;
"�����������makeprg�ķ������У�������·���ո����⡣
"set makeprg="D:/Program Files/MinGW/msys/1.0/bin/make.exe"
"���淽��������vi/vimʹ�ý���: �������� quickfix���ǿ����õģ���ֻ�Ǹ�С����
"set makeprg=gcc\ -Wall\ -omain\ main.c"



"-----------------------------------------------------------------------------
"MiniBufExplorer ����
"-----------------------------------------------------------------------------
"������<C-Tab>��<C-S-Tab>��겻�����ڸ�buffer���л������һ��ڵ�ǰ���ڴ򿪡�����Taglistʱ�����ã���wimwikiʱ���á�
let g:miniBufExplMapCTabSwitchBufs = 1
"����ʹ��<C-��ͷ>�����,����bufexplorer��ӳ����<C-right>��<C-left>�������ͻ����������ע�͵���
"let g:miniBufExplMapWindowNavArrows = 1
"ʹ��minnibuf�� Ҫ���ü���q���ܹرմ��ڡ�����ӳ���һ�ιرմ��ڵĿ�ݼ���:CMinibBufExplorerii�ǹر�minibuf������
noremap Q :CMiniBufExplorer<CR>:q<CR>
"ӳ��һ���л�minibufexplorer�Ŀ�ݼ�
noremap tm :TMiniBufExplorer<CR>  
"���ó�0����������ʾbuf���ڣ�1��ʾ����һ���ļ�ʱ��ʾbuf,2��ʾ���������ļ�ʱ����ʾbuf.��������.����������˼���ܿ�����morethanone3��ʾ����3ʱ����buf
let g:miniBufExplorerMoreThanOne=3



"-----------------------------------------------------------------------------
"bufexplorer����
"-----------------------------------------------------------------------------
"��Ҫ�����bufexplorerʹ�ã���Ϊbuferxplorer�´��ļ�ʱ���»��ֳ�һ�����ڡ�����ӳ��һ�����ٹر���һ�����ڵĿ�ݼ�.��ֻ��һ�����ڣ����ѱ��棬���ѹر�Minibufexplorerʱ���Թرյ�ǰ���ڡ�
:nmap <C-right> :<esc><C-l>:q<cr>
:nmap <C-left> :<esc><C-h>:q<cr>



"-----------------------------------------------------------------------------
"##############nerdtree������##########
"-----------------------------------------------------------------------------
"ӳ��򿪡��ر�NERDTree���ڵĿ����
nmap <F3> :NERDTree  <CR>
"where NERD tree window is placed on the screen
let NERDTreeWinPos = "left"
"����NERDTree���ڵĴ�
let NERDTreeWinSize = 10 "size of the NERD tree
"������������ʹwinmanager��nerdtree ��taglist����ʹ�á���������ÿ���̫����
"@see http://blog.csdn.net/bokee/article/details/6633193
	let g:NERDTree_title="[NERDTree]" 
	let g:winManagerWindowLayout="NERDTree|TagList"
	function! NERDTree_Start()  
    	exec 'NERDTree'  
	endfunction  
  
	function! NERDTree_IsValid()  
    	return 1  
	endfunction  
	nmap wm :WMToggle<CR>  


"-----------------------------------------------------------------------------
"###############project����###############
"-----------------------------------------------------------------------------
"ӳ���project���ڵĿ�ݼ�
nmap <silent> <Leader>P <Plug>ToggleProject
"append project�����������������
"###########c.vim ����###############
"����c.vim��<leader>������Ϊ��\������.������ֻ���ļ�������c cpp����Ч��
let g:C_MapLeader  = ','


"-----------------------------------------------------------------------------
"###########SuperTab ����#################
"-----------------------------------------------------------------------------
"���漸���ǹ����Զ���ȫ�����ã���SuperTab�޹�
"ȱʡ�ģ�vim��ʹ�������˵���һ��preview����(Ԥ������)����ʾƥ����Ŀ�������˵��г�����ƥ�����Ŀ��Ԥ����������ʾѡ����Ŀ����ϸ��Ϣ����Ԥ�����ڻᵼ�������˵������������һ�㶼ȥ��Ԥ�����ڵ���ʾ������Ҫ�ı䡯completeopt����ֵ
set completeopt=longest,menu
"������supertab������
"����supertab�Ĳ�ȫ����
let g:SuperTabDefaultCompletionType = "context"



"-----------------------------------------------------------------------------
"#################vimim����������##################
"-----------------------------------------------------------------------------
"�趨ѭ������,��Ϊ-1���ʾ���׹ر�ѭ��
let g:vimim_toggle='wubi,pinyin'
"let g:vimim_toggle='-1'
"��֪�����壬����һ����վ�Ͽ���Ҫ�������õ�
"let g:vimim_wubi='jd'
"����ģʽ��̬��ʾ��ÿ��һ���־���ʾѡ���̬��ʾ������ո����ʾѡ�Ĭ���Ƕ�̬��
let g:vimim_mode = 'dynamic'
"let g:vimim_mode = 'static'
"�������뷨��ݼ�
let g:vimim_map='c-bslash'
" ���׹ر������룬���ʹ���߿�ѡ
"let g:vimim_cloud=-1 


"-----------------------------------------------------------------------------
"####################latex����������###################
"-----------------------------------------------------------------------------
"��Ҳ�������Щ���ã���Щ�����Ǵӹ�����ժ����
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*
" OPTIONAL: This enables automatic indentation as you type.
filetype indent on
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
"������ˮľ����http://ar.newsmth.net/thread-3983d146501c3c.html
"Ŀ���ǿ��ٱ����pdf�ļ�����ΪĬ������dvi�ļ������Ҫ����pdf�ļ���ʹ������ :TTarget pdf Ȼ����ʹ��\ll������pdf. �����ͨ�� \lp ���ó�Ĭ��pdf������pdf �Ժ���\llҲ������pdf������Щ��
let g:Tex_FormatDependency_pdfs = 'dvi,ps,pdf'
let g:Tex_FormatDependency_pdfm = 'dvi,pdf'
let g:Tex_CompileRule_pdfs = 'ps2pdf $*.ps'
let g:Tex_CompileRule_pdfm = 'dvipdfm $*.dvi' 
map \lp <esc>:TCTarget pdfm<cr>\ll


