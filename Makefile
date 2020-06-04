init:
	sh -c "$$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	# zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/
	# zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions/
	git clone https://github.com/VundleVim/Vundle.vim.git `pwd`/vim/bundle/Vundle.vim
	ln -fs `pwd`/gitconfig $(HOME)/.gitconfig
	ln -fs `pwd`/tmux.conf $(HOME)/.tmux.conf
	ln -fs `pwd`/vimrc $(HOME)/.vimrc
	ln -fs `pwd`/vim $(HOME)/.vim
	ln -fs `pwd`/bash_profile $(HOME)/.bash_profile
	ln -fs `pwd`/zshrc $(HOME)/.zshrc
	vim +PluginInstall +qall

update:
	git pull
	git push

cleanup:
	rm -rf `pwd`/vim/bundle
	rm -rf $(HOME)/.oh-my-zsh
	rm $(HOME)/.gitconfig
	rm $(HOME)/.tmux.conf
	rm $(HOME)/.vimrc
	rm -rf $(HOME)/.vim
	rm $(HOME)/.bash_profile
	rm $(HOME)/.zshrc

