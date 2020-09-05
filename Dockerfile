FROM brandoncc/neovim-master:latest

WORKDIR /usr/src

RUN git clone https://github.com/ThePrimeagen/vim-be-good

COPY init.vim docker/init.vim
RUN nvim -u docker/init.vim +'PlugInstall --sync' +qa

CMD nvim -u docker/init.vim -c 'call VimBeGood()'
