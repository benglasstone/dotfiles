What you're getting
------------------------------
This is my configuration for vim and zsh.
It uses antigen for managing zsh extensions and pathogen for managing vim plugins.

Learn more about pathogen at https://github.com/tpope/vim-pathogen
Learn more about antigen at https://github.com/zsh-users/antigen

Installation
------------------------------
Clone the dotfiles repository into ~/.dotfiles :

    git clone --recursive git@github.com:Josaphat/dotfiles.git ~/.dotfiles

Then make ~/.vimrc ~/.vim and ~/.zshrc into symbolic links to the versions in the repository:

    ln -s ~/.dotfiles/zshrc ~/.zshrc
    ln -s ~/.dotfiles/vimrc ~/.vimrc
    ln -s ~/.dotfiles/vim/ ~/.vim

If you have an older git version or you forgot to use `--recursive` in the clone step:

    git submodule update --init --recursive


Problems
------------------------------
This setup should be pretty straightforward to get going, but if you run into problems submit an issue or e-mail me your questions ( jos at josaphat dot co ).
Feel free to make improvements and send pull requests.

License
------------------------------
The **vimrc** file is a heavily modified, monolithic version of what you'd find in the vimrcs directory of https://github.com/amix/vimrc .
The repository doesn't explicitly include a license, but it includes a submodule which is GPL so I would imagine it falls under the GPL license as well.

That would probably make this work GPL as well.

... I'm not a lawyer.
