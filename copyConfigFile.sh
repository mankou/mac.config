#!/bin/bash
#功能描述：备份mac上常用的配置文件


DEST=~/.mac.config
cp ~/.vim/.vimrc  $DEST/
cp ~/.gvimrc  $DEST/
cp ~/.dir_colors  $DEST/
cp ~/.bash_profile  $DEST/
cp ~/.zshrc $DEST/

ls -al $DEST/
