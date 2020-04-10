# Local Configuration

My bashrc, vim plugins and config setup.

## Add local symlinks to configuration files

Make sure you don't already have a ~/.bashrc file or ~/.vimrc file.

Generate symlinks in your home directory to files in this repository.

`ln -s $(pwd)/.bashrc ~/.bashrc`

`ln -s $(pwd)/vim/.vimrc ~/.vimrc`

`ln -s $(pwd)/vim ~/.vim`

## Vim

Make sure Vim is installed.

`sudo apt-get install vim`

Inside Vim folder, use:

`( cd vim ; git submodule init )`

or, if you already have submodules initialized,

`( cd vim ; git submodule update )`

to install existing Vim plugins.

## More example submodules

[submodule "vim/bundle/command-t"]
	path = vim/bundle/command-t
	url = http://github.com/wincent/command-t
[submodule "vim/bundle/nerdcommenter"]
	path = vim/bundle/nerdcommenter
	url = http://github.com/scrooloose/nerdcommenter
[submodule "vim/bundle/lightline"]
	path = vim/bundle/lightline
	url = http://github.com/itchyny/lightline.vim
[submodule "vim/bundle/nerdtree"]
	path = vim/bundle/nerdtree
	url = http://github.com/scrooloose/nerdtree
[submodule "vim/bundle/vim-gitgutter"]
	path = vim/bundle/vim-gitgutter
	url = http://github.com/airblade/vim-gitgutter
[submodule "vim/bundle/syntastic"]
	path = vim/bundle/syntastic
	url = http://github.com/vim-syntastic/syntastic
[submodule "vim/bundle/fzf"]
	path = vim/bundle/fzf
	url = http://github.com/junegunn/fzf.vim
[submodule "vim/bundle/fzf"]
	path = vim/bundle/fzf
	url = http://github.com/junegunn/fzf.vim
[submodule "vim/bundle/vim-smartinput"]
	path = vim/bundle/vim-smartinput
	url = http://github.com/kana/vim-smartinput
[submodule "vim/bundle/vim-scala"]
	path = vim/bundle/vim-scala
	url = https://github.com/derekwyatt/vim-scala