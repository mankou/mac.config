# 马宁mac的bash_prefile
# modidy:2014-03-01 12:22:39

#------------------------------------------------------------------------
# 配置别名
#------------------------------------------------------------------------

# 设置vim别名 mvim -v的意思是在当前容器中打开mvim 否则会在独立的窗口打开
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias vi="/Applications/MacVim.app/Contents/MacOS/Vim"
#[ -f /usr/bin/mvim ] && alias vim='mvim -v'
#[ -f /usr/bin/mvim ] && alias vi='mvim -v'

# 配置git命令别名
# 注意下面等号右边不能有空格 否则出错
alias gs="git status"
alias gb="git branch"
alias gm="git commit"
alias gmm="git commit -m"
# gca中的a取"auto之意. 注意该命令不会自动提交新建的文件，只能自动提交已经纳入版本控制的文件
alias gma='git commit -am `date +%Y-%m-%d-%H:%M-%A`'
alias ga="git add"
alias gc="git checkout"
alias gr="git reset"
alias gp="git push"
alias gl="git log"
# 只显示提交的时间和统计信息 可使用gls -3 则显示最近3次提交的统计信息 
alias gls='git log --shortstat --pretty=format:"%ci %cr %an"'

# 命令输出着色
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias tree='tree -C'


#-----------------------------------------------------------------
# 配置命令行颜色显示
# 后来使用coreutils进行配色 所以目前的配色是由~/.dir_colors文件控制 所以这里的配置就废弃了                            
# 这所以要废弃就是因为它不能配置文件的颜色
#-----------------------------------------------------------------
#CLI是Command Line Interface的缩写 设置为1表示开启颜色显示
#LSCOLORS分别用来设置如下11个文件类型的颜色.每2个一组，分别表示文字颜色和背景颜色
# directory
# symbolic link
# socket
# pipe
# executable
# block special
# character special
# executable with setuid bit set
# executable with setgid bit set
# directory writable to others, with sticky bit
# directory writable to others, without sticky bit
# a 黑色
# b 红色
# c 绿色
# d 棕色
# e 蓝色
# f 洋红色
# g 青色
# h 浅灰色
# A 黑色粗体
# B 红色粗体
# C 绿色粗体
# D 棕色粗体
# E 蓝色粗体
# F 洋红色粗体
# G 青色粗体
# H 浅灰色粗体
# x 系统默认颜色
#export CLICOLOR=1  
#export LSCOLORS=bxFxCxDxBxegedabagaced  
#export LSCOLORS=GxFxCxDxBxegedabagaced  

# 配置命令行提示符样式
#export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export PS1='\[\033[01;32m\]\u@:\[\033[01;34m\]\w\[\033[00m\]\$ '

# coreutils配色的 也是网上摘来了
if brew list | grep coreutils > /dev/null ; then
  PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
  alias ls='ls -F --show-control-chars --color=auto'
  eval `gdircolors -b $HOME/.dir_colors`
fi

 #设置环境变量
#BLOG=/Users/mang/AppData/Dropbox/wiki/blog/mankou.github.com
BLOG=/Users/mang/AppData/快盘/wiki/blog/mankou.github.com/
MACBAT=/Users/mang/work/workData/shell/bat-mac/
PATH=$MACBAT:$PATH

JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home
PATH=$JAVA_HOME/bin:$PATH
export JAVA_HOME


export PATH 


#test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


# modify by m-ning at 2017-06-10
# 因为我执行sed -n '/2017\/06\/09/,$p' web-catalina.out-20170608 >0609-sed.out 这样的命令报sed : RE error : illegal byte sequence
export LC_CTYPE=C 
export LANG=C
