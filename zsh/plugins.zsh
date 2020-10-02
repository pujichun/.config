if [[ ! -d "~/.zplug" ]]; then
	git clone https://github.com/zplug/zplug ~/.zplug
fi
source ~/.zplug/init.zsh

# 语法高亮插件
zplug "zsh-users/zsh-syntax-highlighting"

# 语法补全插件
zplug "zsh-users/zsh-autosuggestions"

if ! zplug check --verbose; then
	printf "Install?[y/N]: "
	if read -q; then
		echo; zplug install
	else
		echo
	fi
fi

zplug load
