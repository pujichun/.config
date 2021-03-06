# 这是我的配置文件

除了`notebook`中的文件需要软连接或者直接拷贝到对应目录，只需要将zshrc链接到～/.zshrc，然后source即可


## alacritty

- [alacritty.yml](./alacritty/alacritty.yml)是alacritty的配置文件

- [dracula.yml](./alacritty/dracula.yml)是alacritty的主题

## background

- [wallpapers.sh](./background/wallpapers.sh)桌面壁纸每过10分钟自动切换的脚本，文件中的`$HOME/picture`是壁纸所在文件夹

## neofetch

- neofetch中的[config.conf](./neofetch/config.conf)是neofetch的配置文件，该配置文件能控制终端中使用neofetch后输出信息

## i3

- [config](./i3/config)是i3的配置文件，改动很多，其中将polybar-theme的rofi启动脚本设置为了快捷键，没有再使用albert了

## notebook

- notebook中的[custom.css](./notebook/custom.css)放置的是jupyter notebook启动后在WebUI中的样式配置，这个文件需要拷贝或者链接到Python的`site-package/notebook/static/custom`文件夹下

## zsh

- [zshrc](./zsh/zshrc)拷贝或者复制到用户目录下为隐藏文件，或者直接链接过去，但是需要注意要将文件的第一行`export ZSH="/root/.oh-my-zsh"`中的用户改为当前用户

	```bash
	ln -s -f ~/.config/zsh/zshrc ~/.zshrc
	```

- [env.zsh](./zsh/env.zsh)中配置的是我的软件环境变量，只需要`source` .zshrc即可

- [plugins.zsh](./zsh/plugins.zsh)中是zsh的插件，需要使用[zinit](https://github.com/zdharma/zinit)

```bash
mkdir ~/.zinit
git clone https://github.com/zdharma/zinit.git ~/.zinit/bin
```
- [aliases.zsh](./zsh/aliases.zsh)是我定义的一些快速指令

- [install.sh](./zsh/install.sh)是`oh-my-zsh`的安装脚本

- [vi.zsh](./zsh/vi.zsh)是zsh的vi模式的配置脚本

- [magicmace.zsh](./zsh/magicmace.zsh)这是一个主题配置文件

## ranger

- [rc.conf](./ranger/rc.conf)是ranger的配置文件

## pip

[pip.conf](./pip/pip.conf)是pip的源，我使用的是清华大学的镜像

## [screenshot.sh](./screenshot.sh)

截屏脚本，是用的是`flameshot`软件

## [keymap](./keymap)

这是我的键位配置，将Esc键和Caps键进行了交换，将键盘右边的Alt键换为了Ctrl，将键盘右边的Menu键换为了Win键（i3下的Super键）

![keymap](https://github.com/pujichun/img/blob/main/keymap.png?raw=true)
