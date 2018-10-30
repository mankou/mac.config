"=========================== vundle config begin ================================
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
Plugin 'vimwiki/vimwiki'
Plugin 'vim-voom/VOoM'


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


"=======================vim config begin=========================================
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

"渐近式匹配incremental search 即搜索时 会自动把光标定位到匹配处"
set incsearch

"高亮显示搜索到字符
"set nohlsearch
set hlsearch

"按下esc键后取消搜索高亮
nnoremap <esc> : noh<return><esc>

"设置tab键宽度
set tabstop=4
" 设置tab替换为空格
set expandtab

"设置每层缩进数
set shiftwidth=4


"这个选项可以让你设定在上下移动光标时, 当光标到达屏幕顶行或底行时 光标的上方或下方至少会保留显示的行数
set scrolloff=3


"设置命令行的行数"
set cmdheight=2 

"设置状态栏
set statusline=%f\ [ft=%Y]\ %{\"[fe=\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"+\":\"\").\"]\"}\ [ff=%{&ff}]\ [asc=%03.3b]\ [hex=%02.2B]\ [pos=%l,%v][%p%%]\ [le=%L]

" 设置状态栏是否显示. 0表示不显式状态行. 1表示仅当窗口多于一个时显示状态行 2表示总是显式状态行
set laststatus=2

" 屏幕右下角显示未完成的指令输入
set showcmd



"=======================my config begin ==================================

"映射快速复制、粘贴剪切板的快捷键
map ,p "+p
map ,P "+P
map ,y "+y
map ,x "+y<esc>dd



"##########,m自定义快捷键整合##########

"设置小键盘数字键1和大键盘1 映射到  跳转到行末
"map <k1> : <esc>$
"map 1 : <esc>$  "由于两个1都设置成快捷键在正常模式下将不能输入数字1

"设置运行批处理文件的快捷键，用在用vimwiki写完log并导出html后快速复制html到相应目录下 c表示copy
"map ,mc	: <esc>:!..\..\copyNext.bat

"设置切换到　mangCExercise_vim目录下。主要是为了使用版本控制的一些命令
"map ,mdc : <esc>: cd E:\CodeSpace\C\mangCExercise_Vim<cr>

"# ,mt 时间系列
"===,mt时间系列===

"* ,mt 设置快速插入当前日期及时间
"P表示把时间插入到当前光标前面,p表示把时间插入到当前光标后面
:nnoremap ,mt "=strftime("%c")<CR>p

"* ,mtt 设置快速插入当前时间的快捷键
" 注意必须是大写的H和M,小写的有问题
:nnoremap ,mtt "=strftime("%H:%M")<CR>p

"# ,mf 文件名系列
"===,mf文件名系列===

"* ,mft 插入文件名不包含路径 
"插入当前文件名 %t是不包含路径 %p包含路径
:map ,mft <esc>O<c-r>=expand("%:t")<CR> 

"* ,mfp 插入文件名包含路径
:map ,mfp <esc>O<c-r>=expand("%:p")<CR> 

"如下设置成缩写的方式 只要输入xfile就被替换成文件名
iab xfile <c-r>=expand("%:t")<CR>
iab xfilep <c-r>=expand("%:p")<CR>


"* ,mfs 快速在sql文件中插入文件名 如prompt BU_CHANGE_STORE_PLAN.sql的字样
:map ,mfs <esc>ggO<CR>prompt<CR>prompt xfile ...<esc>oprompt ==========<esc>

"* ,mff 快速取出路径中文件名
" 常用于从v4的svn日志中提取增量升级包
" 该命令只能提取一行的文件名你需要做成宏就可以批量执行了
map ,mff <esc>$?/<CR>d0xj


"# ,mw 工作常用相关的处理
"===,mw 工作常用相关的处理===

"* ,mwm 快速将vimrc中与,m有关的注释提取出来 
	" 快速提取,md  m 取md之意
" 操作说明
	" 执行vim快捷键 ,md 快速提取注释
	" 将文件名修改为 vim,m-shortcut.md
	" 将文件剪切到vimInWork 则在mweb中就能看到
"命令解释如下
	" 如下命令包含三部分 
		" :%v//d<cr> 找出需要的行 其它行都删除
			"\\| \\表示转义 输出\   反正是\|是表示或的意思 
			"^"\# ,m 表示找出以 "# ,m 这样的行 其中\#是转义
			"^"===,m 表示找出以 ^"===,m 这样的行
			"^"\* ,m 表示找出以 "* ,m 这样的行 其中\*是转义
		" gg0<c-v>Gx 删除每行的第一个字符 这里是"
		" g/^#/normal O 找出行首是#的行前面加一空行 主要是了mweb 
		" 在mweb中# 表示标题 如果不在前面加一空行其不认
		" ggdd 删除行一行
map ,mwm :%v/^"\#\+ ,m\\|^"\* ,m/d<cr><esc>gg0<c-v>Gx:g/^#/normal O<cr>ggdd
"map ,mwm :%v/^"\#\+ ,m\\|^"===,m\\|^"\* ,m/d<cr><esc>gg0<c-v>Gx

"* ,mwt tms 写日报用 因从evernote中复制过来后需要去掉空行再复制到剪切板
map ,mwt <esc>:g/^$/d<cr><esc>ggVG"+y

"* ,mwd 快速删除当前文件中的debugger;的行 快捷命令DelDebugger
"先跳转到第1行 然后删除含有debugger;行的代码
map ,mwd :<esc>gg:%g/debugger;/d<cr>
command DelDebugger : execute 'normal ,mwd'

"* ,mwLoad 快速格式化装载机派工日志
" java:1338
":%s/-->/\r/g 将--> 换成换行
":g/list/s/:\|),/)\r/g 
" 将冒号: 或者), 替换成 )\r 即)换行
":g/list/,$ normal >>
	" 将包含list的行开始 到最后一行都 右移>> 这里包含list的行就是派工list
	" 注 我本想使用如下的命令 将两个list之间的行右移但报错 所以我换成其它的了
	":g/list/,/list/normal >>
":g/list/s/\s*//g
	" 将包含list行的行首空白删除
":g/^/s/^\s\+/\t/g
	" 将每一行的行前瞻空白换成tab
	" 因为做上面 g/list/,$ normal >> 的命令后所有行都右移了 所以要做这一步操作
" ggdd 删除第一行 因为第一行是空行
" Gdd 删除最后一行 因为最后一行是endlist
map ,mwLoad :<esc>:%s/-->/\r/g<cr>:g/list/s/:\\|),/)\r/g<cr>:g/list/,$ normal >><cr>:g/list/s/\s*//g<cr>:g/^/s/^\s\+/\t/g<cr><esc>ggddGdd


"* ,mwp 在url上快速加上ip 并复制到剪切板
map ,mwp :<esc>0ihttp://127.0.0.1:9080/<esc>"+yy

"* ,mw# 快速删除shell中注释信息
"2,$g/^\s*#/d 表示从行2行开始 替换 以\s*#开头的行 并删除 \s表示空白
"*表示重复0次或n次 #就是shell中注释
"将连续的空行替换成单个空行
map ,mw# :2,$g/^\s*#/d<cr>:%s/^\n$//g<esc>


"* ,mw: 快速删除批处理bat中注释信息
"2,$g/^\s*::/d 表示从行2行开始 替换 以\s*#开头的行 并删除 \s表示空白
"*表示重复0次或n次 #就是shell中注释
"将连续的空行替换成单个空行
map ,mw: :2,$g/^\s*::/d<cr>:%s/^\n$//g<esc>


"* ,mwmac  将z:\xx 改成 /Users/mang/xx
"背景:快速将虚拟机windows中的路径换成mac下的路径方便你执行shell脚本
"mac 取mac的意思
"注 路径必须是windows中的路径 z:\ 而不是linux中的z:/ 路径
"第一部分 把z:\改成 /User/mang/
"第二部分 将\ 转换成/
map ,mwmac <esc>:%s!z:\\!/Users/mang/!g<cr>
                \:%s!\\!/!g<cr>
command FilePathToMac : execute 'normal ,mwmac'

"* ,mwmac2 将\\Mac\Home\xx 的路径 替换成 /Users/mang/xx 
" 背景:快速将win10虚拟机中的路径替换成mac上的路径
" 解释
    "  命令1: %s!\\\\Mac\\Home!/Users/mang!g 将 \\Mac\Home 替换成 /Users/mang
    "  其中\需要转义 所以\\会写成 \\\\
    "  命令2: %s!\\!/!g<cr> 将\\替换成/
map ,mwmac2 <esc>:%s!\\\\Mac\\Home!/Users/mang!g<cr>
                \:%s!\\!/!g<cr>
command FilePathToMac2 : execute 'normal ,mwmac2'


"* ,mwz 快速将z:\xx 变成 \\Mac\Home\ 的形式
" 背景:在win10虚拟机上everything不认Z盘但其认\\Mac\Home 但totalcommand认Z盘
" 在totalCommand中拷备的路径是z:开头,而如果想在everything中搜索路径则需是\\Mac\Home开头
" 所以想写一个快捷键进行转换
" 使用方法: 将z盘开头的路径复制到vim中然后执行该快捷键
" 解释 
	" 这里使用#做为%s替换命令的分隔符,因为在替换字符串中要用到\
    " 为了不引起混乱所以用#
    " \\\\是转义 表示\\
map ,mwz <esc>:%s#z:#\\\\Mac\\Home#g<CR>


"* ,mw\ 快速将\转换成/ 常用于windows中的路径转换中linux中的路径 
" \取\之意
" ! 这里用!代替原来s命令的/
" \\表示转义
map ,mw\ :%s!\\!/!g<cr>

"* ,mwl 快速在每行前面加一行号.空格 如1. 
" 使用场景: 常用markdown语法 需要将文字转换成有序列表 
" line('.')是取行号的意思 第2个.是字符串连接的意思 第3部分'. '是.和空格
map ,mwl :%s/^/\=line('.').'. '<cr>


"* ,mwj 快速转换成json格式
" 2017-02-16
" 使用场景：
	" 整理接口规范时有时需要json样例则可以快速通过如下命令转换成json字符串
" 具体使用
	" 在excel中把列和值都写好一行一个
	" 粘贴到vim中
	" 执行快捷键 ,mwj
" 命令讲解
	" <esc>:g/^$/d<cr> 去掉空行 因为从excel中拷过来时第一行或者最后一行有空行
	" :%s/\t/":"g 将制表符换成":"
	" :%s/^/"/g<cr> 每行前面加一个双引号 "
	" :%s/$/"/g<cr>: 每行最后面加一个双引号 "
	" 1,$-1s/$/,/g<cr> 从第一行到倒数第二行行末加逗号
	" ggO{ 第一行加一个{
	" Go} 最后一行加一个}
map ,mwj <esc>:g/^$/d<cr>
			\:%s/\t/":"/g<cr>
			\:%s/^/"/g<cr>
			\:%s/$/"/g<cr>:
			\1,$-1s/$/,/g<cr>
			\ggO{<esc>
			\Go}<esc>

"* ,mwc 快速将峰驼形式的单词变成下划线分隔 如将 testClientId变成test_Client_Id
" 注 如果是一个单词则会有问题如 Version会变成_Version 这各情况需要手工再处理下
" 2017-03-09 自已写的
" 命令解释
	" 原理即找到大写字母 在前面加上_
	" \([A-Z]\) 表示找大写字母 \(\)是小括号转义
	" 至于为什么要用小括号是为了方便后面用\1表示小括号匹配到的字母
	" \1 表示用小括号匹配到的字母
map ,mwc <esc>:%s/\([A-Z]\)/_\1/g<cr>

"* ,mwC 快捷将下划线分隔的单词转换成峰驼式 如test_client_id 变成testClientId
" 2017-03-09 自己写的
" 命令解释
	" gg 跳转到第一行
	" guG 将所有行变成小写
	" :%s/_\([a-z]\)/\U\1/g 表示查找 _小写字母 交将其变成大写
	" 这里的\U表示将其变成大写 \1表示前面小括号匹配的字母
map ,mwC <esc>ggguG:%s/_\([a-z]\)/\U\1/g<cr>


"* ,mwdruidd 快速生成用于druid摄入文件的dimensions列
map ,mwdruidd <esc>:g/^$/d<cr>
			\gg<c-v>GI"<esc>
			\:%s/$/",/g<esc>
			\:%s/\n//g<esc>
			\0i[<esc>
			\$xa],

"* ,mwdruidm 快速生成用于druid摄入文件的metrics
" 生成后可直接复制然后放到jsonview中格式化 再自己改改类型和列名就能用了
" 解释 
	" :g/^$/d 删除空白行 因为从excel拷来的列第一行是空行
	" :g/^/normal yyp 每行复制一次 
	" :g/^/j 奇偶行合并
	" :%s/^/{"name":"sum/g  每行前面加一些字符串
	" :%s/ /","type":"longSum","fieldName":"/g 将空格替换成这些字符串
	" :%s/$/"},/g" 第行最后加一些字符串
	" G$x 删除最后一行的,号 
	" gg0i[ 第一行最前面加一个[ 用于把json格式组织成数组
	" G$a] 最后一行最后面加一个] 用于把json格式组织成数组
map ,mwdruidm <esc>:g/^$/d 
			\<esc>:g/^/normal yyp<cr>
			\:g/^/j<cr>
			\:%s/^/{"name":"sum/g<cr>
			\:%s/ /","type":"longSum","fieldName":"/g<cr>
			\:%s/$/"},/g<cr>
			\G$x
			\gg0i[<esc>
			\G$a]<esc>


"* ,mwg 快速将一个方法中的get方法提取出来
" 背景:工程中要求写测试类,其竟然对实体类的get/set方法也检查,所以想写一个快捷键能快速将类中的get/set方法提取出来
" 使用方法: 将类中的get/set方法复制到vim中来然后执行该快捷键
" 解释 
	" %v/get/d 把所有包含get的行取出来 也即把get方法的那一行都取出来
    " %s/public//g 删除public
    " %s/void//g 删除void
    " %s/String//g 删除String 主要指set方法的参数类型 如public void setCommodityCatgId(String commodityCatgId) {
    " %s/double//g 删除double
    " %s/BigDecimal//g 删除BigDecimal
    " %s/Character//g 删除Character
    " %s/Timestamp//g 删除Timestamp
    " %s/\s//g 删除空白字符串 因为上面处理后每行都有各种空白想去掉
    " %s/{.*$//g 去掉行尾的{
    " %s/$/;/g 每行后面加上;
    " %s/^/e./g 每行前面加上e.
map ,mwg <esc>:%v/get/d
            \<esc>:%s/public//g<cr>
            \:%s/String//ge<cr>
            \:%s/double//ge<cr>
            \:%s/BigDecimal//ge<cr>
            \:%s/Character//ge<cr>
            \:%s/Timestamp//ge<cr>
            \:%s/\s//ge<cr>
            \:%s/{.*$//ge<cr>
            \:%s/$/;/ge<cr>
            \:%s/^/e./ge<cr>


"* ,mws 快速将一个方法中的set方法提取出来
" 背景:工程中要求写测试类,其竟然对实体类的get/set方法也检查,所以想写一个快捷键能快速将类中的get/set方法提取出来
" 使用方法: 将类中的get/set方法复制到vim中来然后执行该快捷键
" 解释 
	" %v/set/d 把所有包含set的行取出来 也即把set方法的那一行都取出来
    " %s/public//g 删除public
    " %s/String//g 删除String 主要指set方法的参数类型 如public void setCommodityCatgId(String commodityCatgId) {
    " %s/double//g 删除double
    " %s/BigDecimal//g 删除BigDecimal
    " %s/Character//g 删除Character
    " %s/Timestamp//g 删除Timestamp
    " %s/\s//g 删除空白字符串 因为上面处理后每行都有各种空白想去掉
    " %s/{.*$//g 去掉行尾的{
    " %s/$/;/g 每行后面加上;
    " %s/^/e./g 每行前面加上e.
    " :%s/(/("/g  将(替换成("
    " :%s/)/")/g  将)替换成") 2句合起来就是想将(para) 替换成("para")
    " 因为实体中多数是String类型,所以我想特殊处理下直接设置成字符串,以减轻后续的工作量
map ,mws <esc>:%v/set/d
            \<esc>:%s/public//g<cr>
            \:%s/void//g<cr>
            \:%s/String//ge<cr>
            \:%s/double//ge<cr>
            \:%s/BigDecimal//ge<cr>
            \:%s/Character//ge<cr>
            \:%s/Timestamp//ge<cr>
            \:%s/\s//ge<cr>
            \:%s/{.*$//ge<cr>
            \:%s/$/;/ge<cr>
            \:%s/^/e./ge<cr>
            \:%s/(/("/g<cr>
            \:%s/)/")/g<cr>



"* ,mm 将光标快速定位到行的中间
"2015-1-25来自百度
"实际上如果你不是要求很严格的话，可以通过 20<空格>或者20l的方式往后移动光标
map ,mm :exe "norm " . col("$")/2 . "\|" <CR>
"网上说如下方式也是可以的，但我没有试，因为上面的方式已经ok了
":cal cursor(line("."), col("$")/2)

"# ,ms sql语句处理
"===,ms sql语句处理===
"* ,mss 将导出的insert语句中的id换成s_test.nextval
"注之所以命令最后面不加<CR>是因为我只想把命令打出来 具体的sequence的名你自己改
"改完后 你自己按回车执行下
"处理前
"insert into t_test (ID, CODE, NAME)
"values (-1, '-1code', '-1name');
"
"处理后
"insert into t_test (ID, CODE, NAME)
"values (s_test.nextval, '-1code', '-1name');

map ,mss <esc>:%s/(-*\d\+/(s_test.nextval/g

"# ,mg割接使用
"===,mg割接使用===
"自定义宏命令
"因已经,mgd快捷键和该宏命令效果一样 所以就去掉
" 但如下定义宏的写法挺有意思 
" 一是换行的写法 具体输入时 要先ctrl+v 然后再按ctrl+m
" 二是执行宏时你不能直接@m,而是需要在命令行模式下输入
" 也即:@m,这一点与我以前认为的执行宏不一样.
"let @m='v/^create sequence/d:%s/^create/drop/g<cr>:%s/$/;/g'

"## ,mgs 系列 sequence 系列 s取sequence的意思
"* ,mgsn 将sequence导出后的语句处理成select sequence.nextval from dual;的语句
"使用场景一 sequence已经通过dmp导入了 现在需要把sequence增长20次  如 增加sequence(增加20次)-20150729.sql
"使用场景二 割接时需要快速做sequence 从正式库导出 再导入测试库 再把sequence弄大
map ,mgsn :<esc>:v/^create sequence/d<cr>
        \ :%s/^create sequence/select/g<cr>
        \:%s/$/.nextval from dual;/g<cr>

"* ,mgsd 快速将导出的sequence的语句整理成drop sequence的语句
map ,mgsd :<esc> :v/^create sequence/d<cr><esc>:%s/^create/drop/g<cr><esc>:%s/$/;/g<cr>

"* ,mgsc 快速将导出的sequence整理成先drop 再创建 再nextvalue 50次

" 如下是原来的方式现在不用了 因为其复制的next.value是整体复制然后粘贴50次不好看
"ggVG"ay表示先将刚导出的创建sequence语句复制一份 放到a寄存器里
",mgn表示处理成 select nextvalue的语句
"ggVG"by表示把刚才处理成nextvalue的语句复制到b寄存器里
"u表示恢复 到刚开始的文本 因为还要进行下面的处理而且上面处理后的语句也都复制了
",mgd表示处理成drop语句
"G"ap表示把刚才复制到a寄存器的语句粘贴 形成 先drop 再创建的语句
"G50"bp 表示将粘贴第2步复制到寄存器的next语句 粘贴50次 形成先drop 再创建 再nextvaule50次的语句
"map ,mgc ggVG"ay,mgnggVG"byu,mgdG"apG50"bp<cr>

" 新方式 这种方式复制的next.value的语句是按每行复制50次粘贴 再复制第2行
"ggVG"ay表示先将刚导出的创建sequence语句复制一份 放到a寄存器里
",mgn表示处理成 select nextvalue的语句
"<esc>:g/^/normal yy50pj<cr> 表示把上面处理的select
"nextvalue的语句每行复制50次 而且是按顺序的
"ggVG"by 把刚才处理的复制50次之后的sequence 复制到b寄存器
",mgd表示处理成drop语句
"G"ap表示把刚才复制到a寄存器的语句粘贴 形成 先drop 再创建的语句
"G"bp 表示将粘贴第2步复制到寄存器的next语句 形成先drop 再创建 再nextvaule50次的语句
map ,mgsc ggVG"ay,mgsn<esc>:g/^/normal yy50pj<cr>ggVG"byu,mgsdG"apG"bp<cr>

"## ,mgt 系列 table 系列 t取table的意思

"* ,mgt0 快速将导出的建表语句中的comment设置成空
"mgt0 因mg是与割接有关的所以放在mgt下 0表示comment 0
"%v/^comment on /d 把有以comment on开头的行提取出来
"%s/$/ is '';/g 表示在行尾加上 is '';的语句
map ,mgt0 <esc>:%v/^comment on/d<cr>:%s/$/ is '';/g<cr>

"* ,mgta 快速将导出的建表语句中的comment语句取出
"mgta 因与割接有关所以放在mgt下 a表示comment all
"^comment on 表示以comment on开头的行
"^\s * is 表示以空白开头然后是is空格的行 注意is后面必须有空格 因为你有的字段名也是is
"^'; 因为有的行的注释其分成2行了把单引号和;分在下一行了所以要格外注意下
"\|表示或的意思 如果你在命令里直接写写成\|即可 但如果是在这里写配置要写成\\|
map ,mgta <esc>:%v/^comment on \\|^\s*is \\|^';/d<cr>

"* ,mgts 快速将表组织成表选择的方式
map ,mgts <esc>ggOPL/SQL Developer Object Selection File
			\	<cr><esc>,mt<cr>
			\ :3,$s/^/table "yh"."/g<esc>
		    \:3,$s/$/"/g<esc>	


"* .mgcd 快速将导出的建表语句转换成drop表的语句并且倒序排列(解决有可能出现外键依赖的问题)
map ,mgcd <esc>:%v/^create table/d<cr>:%s/create/drop/<cr>:%s/$/;/g<cr>:g/^/m0<cr>


"# ,m自定义函数

"* ,m-CopyMatches
function! CopyMatches(reg)
  let hits = []
  %s//\=len(add(hits, submatch(0))) ? submatch(0) : ''/ge
  let reg = empty(a:reg) ? '+' : a:reg
  execute 'let @'.reg.' = join(hits, "\n") . "\n"'
endfunction
command! -register CopyMatches call CopyMatches(<q-reg>)

"* ,m-KeepLines
function! KeepLines(pattern)
    let pattern = a:pattern
    let hits = []
    exec '%s/' . pattern . '/\=add(hits, submatch(0))/ge'
    let str = join(hits, "\n") . "\n"
    %d
    put! = str
endfunction
command! -nargs=1 KeepLines call KeepLines(<f-args>)



"############### vimwiki config begin ########################
"以下内容加于2011年8月11日18时40分54秒

"安装官方文档的要求，需要确保 vimrc 文件中有如下的设置 也不知道为什么
set nocompatible
filetype plugin on "针对不同文件类型的相应plugin, 你可以使用该命令开启对它的应用
syntax on

let $VIMHOME = '/Users/mang/work/workData/wiki/'
"设置wiki路径
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
"设置vimwiki各标题的颜色，标题1-标题6分别是红绿蓝粉青黄，注意这是在vim中显示的颜色，不是在网页中显示的颜色。
"配置颜色的目的：是为了配合Voom。我以前为Voom自定义了个配色的配置文件在$Vimhome/vimfiles/syntax/Voomtxt.wiki {现在安装了pathegon插件，所以该文件路径为$Vimhome/vimfiles/bundle/Voom/syntax 如果没有syntax目录的话，自己新建} 那里曾经也为vimwiki配置过颜色（vimwiki默认的配色不是这个样子），使用时需要每次输入命令 set ft=Voomtxt，才能看到配色的效果，使用起来比较麻烦。但我也不想把voomtxt关于vimwiki的配色设置删除掉，为了保护自己的劳动成果，所以在vimwiki下也设置了与那里相同的颜色。即本来使用的是Vimwiki默认的配色方案，但后来在Voomtxt.wiki中为wimwiki配置了颜色，但使用voomtxt又不是很方便，所以为了延续voomtxt的配色方案，这里把vimwiki的配色方案设置成与voomtxt一样的配色方案。
:hi VimwikiHeader1 guifg=#FF0000
:hi VimwikiHeader2 guifg=#00FF00
:hi VimwikiHeader3 guifg=#0000FF
:hi VimwikiHeader4 guifg=#FF00FF
:hi VimwikiHeader5 guifg=#00FFFF
:hi VimwikiHeader6 guifg=#FFFF00


"设置在vimwiki中可以使用的html标签
let g:vimwiki_valid_html_tags='b,i,s,u,small,sub,sup,kbd,br,hr,div,del,code,red,green,modify,center,left,right,h4,h5,h6,a,small,pre,ol'

"设置默认打开html的浏览器。当用命令\whh 时会自动将当前wiki转换成html，并用浏览器打开html
let g:vimwiki_browsers=['D:\Program Files\Mozilla Firefox\firefox.exe']
" 使用鼠标映射  
let g:vimwiki_use_mouse = 1


" 是否将驼峰式词组作为 Wiki 词条 1是 0否 默认是1
let g:vimwiki_camel_case = 0

" 标记为完成的 checkist 项目会有特别的颜色 
let g:vimwiki_hl_cb_checked = 1 

" F4当前页生成HTML，Shift+F4 全部页生成HTML 
map <S-F4> :VimwikiAll2HTML<cr> 
map <F4> :Vimwiki2HTML<cr> 

"设置切换任务列表的快捷键
map <leader>tt <Plug>VimwikiToggleListItem

" 加一个 vimwiki 菜单项
let g:vimwiki_menu = 'Vimwiki' 

" 是否开启按语法折叠 会让文件比较慢 
" 可设置的值有 ''  expr syntax list custom
" Folding in Vimwiki can uses either the 'expr' or the 'syntax' |foldmethod| of Vim
let g:vimwiki_folding ='expr'

"启用子列表项折叠功能，现在也没看出来有什么效果
let g:vimwiki_fold_lists = 1

"输出的html是否自动编号。 默认为0。 0 关闭, 1 从一级标题开始 ,2 从二级标题开始
"依次类推
let g:vimwiki_html_header_numbering =1

"在一个没有复选框的列表项目上按下\tt(自己设置的热键)则可以创建列表框。默认是1
let g:vimwiki_auto_checkbox = 1

"使用预先定义的颜色高亮不同级别的标题 =Reddish=, ==Greenish==, ===Blueish===
let g:vimwiki_hl_headers = 1

"自动格式化表格
let g:vimwiki_table_auto_fmt = 1

"设置vimwiki下查找的快捷键 s代表search
map ,ms : <esc>:VimwikiSearch

"设置vimwiki查找后浏览的快捷键 如mn代表显示下一个匹配项 mp代表显示前一个匹配项 lm代表显示所有匹配项.原来设置的是ln lp lo　后来发现l是光标向右移动的键，所以又改成m了
map ,mn : <esc>:lnext <Return>
map ,mp : <esc>:lprevious <Return>
map ,mo : <esc>:lopen <Return>

" 20181029 添加用于解决macVim 打开markdown文件不自动折叠的问题
"A many-to-one mapping between file extensions and syntaxes whose purpose is to register the extensions with Vimwiki.
let g:vimwiki_ext2syntax = {'.md': 'markdown',
                  \ '.mkd': 'markdown',
                  \ '.wiki': 'media'}

"============================vimwiki config end =============================

