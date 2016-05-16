What you're getting
------------------------------
This is my configuration for vim and zsh.  It uses antigen for
managing zsh extensions and pathogen for managing vim plugins.

Learn more about pathogen at https://github.com/tpope/vim-pathogen
Learn more about antigen at https://github.com/zsh-users/antigen

Installation
------------------------------
Clone the dotfiles repository into ~/.dotfiles :

    git clone --recursive git@github.com:Josaphat/dotfiles.git ~/.dotfiles

Then make ~/.vimrc ~/.vim and ~/.zshrc into symbolic links to the
versions in the repository:

    ln -s ~/.dotfiles/zshrc ~/.zshrc
    ln -s ~/.dotfiles/vimrc ~/.vimrc
    ln -s ~/.dotfiles/vim/ ~/.vim

If you have an older git version or you forgot to use `--recursive` in
the clone step:

    git submodule update --init --recursive

Customization
------------------------------
I won't stop you, but you aren't meant to be modifying the zsh config
files directly.  Instead, you customize by modifying a few files in
the `custom/` subdirectory.

### Antigen Setup `custom/antigen_setup.zsh`
If this file exists, it is loaded instead of the default setup:

    antigen use oh-my-zsh
	antigen bundle git
	antigen bundle git-flow

Create the file to customize what happens immediately after antigen is
sourced and before `antigen apply` is invoked. **NOTE** Customizing
the theme is a separate file.

### Antigen Theme `custom/theme.zsh`
If this file exists, it is loaded insetad of the default setup:

    antigen theme af-magic

### Setting $PATH `custom/path.zsh`
Set path by editing `custom/path.zsh`.

### Setting Environment Variables (that aren't path) `custom/environment.zsh`
This file, if it exists is loaded in zshenv.  Export any environment
variables here (other than PATH).

### Aliases `custom/aliases.zsh`
This file, if it exists, is loaded in zshenv after
`custom/environment.zsh`.  It is loaded in zshenv in order for aliases
to be available in shells as you'd normally expect, but also when you
try to execute shell commands in vim using `:!`.

### Super-customization of zprofile `custom/zprofilecustom.zsh`
This file, if it exists, is loaded at the end of zprofile.  You do
whatever you want here, usually if it doesn't have a designated
customization file.  Note that this is meant to customize login
shells.

### Super-customization of zshrc `custom/zshrcustom.zsh`
This file, if it exists, is loaded at the end of zshrc.  You do
whatever you want here, usually if it doesn't have a designated
customization file.  Note that this is meant to customize interactive
shells.

Problems
------------------------------
This setup should be pretty straightforward to get going, but if you
run into problems submit an issue or e-mail me your questions ( jos at
josaphat dot co ).  Feel free to make improvements and send pull
requests.

License
------------------------------
The **vimrc** file is a heavily modified, monolithic version of what
you'd find in the vimrcs directory of https://github.com/amix/vimrc .
The repository doesn't explicitly include a license, but it includes a
submodule which is GPL so I would imagine it falls under the GPL
license as well.

That would probably make this work GPL as well.

... I'm not a lawyer.
