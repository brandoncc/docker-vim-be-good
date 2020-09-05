FROM brandoncc/neovim-master:latest

WORKDIR /usr/src

COPY init.vim docker/init.vim
RUN nvim -u docker/init.vim +'PlugInstall --sync' +qa

CMD nvim -u docker/init.vim -c 'call VimBeGood()'
