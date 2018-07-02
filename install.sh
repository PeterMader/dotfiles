#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

ln -s $DIR/.vim ~/.vim
ln -s $DIR/.bashrc ~/.bashrc
ln -s $DIR/.Xdefaults ~/.Xdefaults
