# My personal dotfiles


## Install ##

```shell
cd ~/
git clone 'https://github.com/JohanRibes/dotfiles' ~/
source ~/dotfiles/.bash/.bashrc
````


## Philosophy ##

* All my `dotfiles` and somes scripts are stored in the same repo.
* Symlink in `.bashrc` file.


### Problems ###
1. I chose to include Vim scripts because sometimes I can't use git at work. If git is available, you can rm every script except Vundle and launch the following command in Vim: `PluginInstall`.
2. Creating symlink in the repo show my username into the files even if I work with `~` symbol. 
