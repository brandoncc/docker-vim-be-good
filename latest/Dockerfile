FROM brandoncc/vim-be-good:stable

WORKDIR /usr/src

CMD echo "Updating vim-be-good..." && \
  nvim -u docker/init.vim --headless +'PlugUpdate --sync' +qa && \
  nvim -u docker/init.vim -c 'call VimBeGood()'
