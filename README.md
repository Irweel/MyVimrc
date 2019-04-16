# MyVimrc
Just my vim config file, vimrc. Has macros for LaTeX, Python, and other things.

## Installation
1. First of all install vim:

### Ubuntu:
````console
foo@bar:~$ sudo apt-get update
foo@bar:~$ sudo apt-get install vim 
````
### Arch:
Vim and gvim they are already on the official packages. Install them with pacman.
````console
foo@bar:~$ pacman -S vim
````
2. Create the .vim folder and clone the Bundle repo:
````console
foo@bar:~$ mkdir .vim
foo@bar:~$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
````
3. Clone this file.
````console
foo@bar:~$ git clone https://github.com/Irweel/MyVimrc
````
4. Enter on .vimrc file and install plugins:
```
 :PluginInstall
``` 
5. Install on compatible font.
