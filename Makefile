#variables
PACMAN := sudo pacman -S
bash: #Bash
	$(PACMAN) $@
	ln -vsf ${PWD}/.bashrc ${HOME}/.bashrc
	ln -vsf ${PWD}/.bash_profile ${HOME}/.bash_profile

vim: #vim https://blog.htkyama.org/vim_plugins_dein
	$(PACMAN) $@
	test -L ${HOME}/.vim || rm -rf ${HOME}/.vim
	ln -vsfn ${PWD}/.vim ${HOME}/.vim
	ln -vsf ${PWD}/.vimrc ${HOME}/.vimrc
	mkdir -p ~/.cache/dein
	cd ~/.cache/dein && curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
	cd ~/.cache/dein && sh ./installer.sh ~/.cache/dein

tmux: #tmux
	$(PACMAN) $@	
	ln -vsf ${PWD}/.tmux.conf ${HOME}/.tmux.conf

bell:
	ln -vsf ${PWD}/.inputrc ${HOME}/.inputrc
	
dot: bash vim tmux bell
