# Developer Environment Setup

This guide outlines the steps to set up a development environment on macOS.
The setup includes the installation of essential software and customization of terminal configurations.

### Table of Contents

- [Install Homebrew](#install-homebrew)
- [Install iTerm2](#install-iterm2)
- [Install Zsh](#install-zsh)
- [Install Oh My Zsh](#install-oh-my-zsh)
- [Install zsh-autosuggestions](#install-zsh-autosuggestions)
- [Install zsh-completions](#install-zsh-completions)
- [Install zsh-syntax-highlighting](#install-zsh-syntax-highlighting)
- [Syntax Highlighting](#install-zsh-syntax-highlighting)
- [Install Fonts](#install-fonts)
- [Install Powerlevel10k](#install-powerline10k)
- [Install Colorls](#install-colorls)
- [Install Neovim](#install-neovim)
- [Install Tmux](#install-tmux)
- [Install Node](#install-node)
- [Install .NET](#install-net)
- [Install Alfred](#install-alfred)
- [Install Rectangle](#install-rectangle)
- [Install Maccy](#install-maccy)
- [Install Chrome](#install-chrome)
- [Install Authy](#install-authy)
- [Install Jetbrains Toolbox](#install-jetbrains-toolbox)
- [Install Docker](#install-docker)
- [Install Postman](#install-postman)
- [Install Surfshark](#install-surfshark)

### Install Homebrew

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install iTerm2

```shell
brew install --cask iterm2
```

Remove last login message from iterm

```shell
touch ~/.hushlogin
```

Resources to customize iterm

- background-image: [space](https://unsplash.com/photos/galaxy-during-nighttime-iSYYLt2rKac)
- colorscheme: [gruvbox](https://github.com/morhetz/gruvbox-contrib/blob/master/iterm2/gruvbox-dark.itermcolors)

### Install Zsh

```shell
brew install zsh
```

### Install Oh My Zsh

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Install zsh-autosuggestions

```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### Install zsh-completions

```shell
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
```

Add it to `FPATH` in your `.zshrc by adding the following line before ``source "$ZSH/oh-my-zsh.sh"`` :

```shell
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
```

### Install zsh-syntax-highlighting

```shell
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```

Enable syntax highlighting in the current interactive shell:

```shell
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

Alternatively, install it via `oh-my-zsh`

```shell
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### Install Fonts

- [Dank Mono](https://github.com/codewithbehzad/Best-Vs-Code-fonts-/blob/main/DankMono.zip)


- [MesloLGS NF Regular.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
- [MesloLGS NF Bold.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
- [MesloLGS NF Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
- [MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)

### Install Powerline10k

```shell
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

*Set theme in `~/.zshrc`*

```shell
ZSH_THEME="powerlevel10k/powerlevel10k"
```

### Install Colorls

```shell
sudo gem install colorls
```

Enable tab completion for flags

```shell
source $(dirname $(gem which colorls))/tab_complete.sh
```

Check if the `~/.config/colorls` directory exists. If it doesn't exist, create it using the following command:

```shell
mkdir -p ~/.config/colorls
```

and then

```shell
cp $(dirname $(gem which colorls))/yaml/dark_colors.yaml ~/.config/colorls/dark_colors.yaml
```

in the `~/.config/colorls/dark_colors.yaml` file, change the colors

```yml
# Change only main colors
unrecognized_file: '#a89984' #gold -> gray
recognized_file:   '#d79921' #yellow
executable_file:   '#98971a' #lime -> green
dir:               '#458588' #dodgerblue -> blue
```

### Install Neovim

```shell
brew install neovim
```

* see also [neovim config](.config/nvim/init.lua)

### Install Tmux

```shell
brew install tmux
```

Install tmux plugin manager

```shell
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

* see also [tmux config](.tmux.conf)

### Install Node

```shell
brew install node
```

### Install .Net

```shell 
brew install --cask dotnet-sdk
```

### Install Alfred

```shell
brew install --cask alfred
```

### Install Rectangle

```shell
brew install --cask rectangle
```

### Install Maccy

```shell
brew install --cask maccy
```

### Install Chrome

```shell
brew install --cask google-chrome
```

### Install Authy

```shell
brew install --cask authy
```

### Install Jetbrains Toolbox

```shell
brew install --cask jetbrains-toolbox
```

### Install Docker

```shell
brew install --cask docker
```

### Install Postman

```shell
brew install --cask postman
```

### Install Surfshark

```shell
brew install --cask surfshark
```

### Install AWS CLI

```shell
brew install awscli
```

Login to cli it will require the `access key` and the `secret access key`

```shell
aws configure
```