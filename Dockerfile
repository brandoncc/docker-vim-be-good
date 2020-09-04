FROM brandoncc/neovim-master:latest

RUN curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN git clone https://github.com/ThePrimeagen/vim-be-good
WORKDIR "vim-be-good"

COPY init.vim docker/init.vim
RUN nvim -u 'docker/init.vim' +'PlugInstall --sync' +qa

CMD ["nvim", "-u", "docker/init.vim", "-c", "call VimBeGood()"]
