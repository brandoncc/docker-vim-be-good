docker-vim-be-good
------------------

Allows users to play http://github.com/ThePrimeagen/vim-be-good without
installing or building anything.

`stable` image build steps:

- `docker build --no-cache -t brandoncc/vim-be-good:stable stable`
- `docker push brandoncc/vim-be-good:stable`

`latest` image build steps (uses `stable` as a base):

- `docker build --no-cache -t brandoncc/vim-be-good:latest latest`
- `docker push brandoncc/vim-be-good:latest`
