"return" 2>&- || "exit"

if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
set showmatch " 显示匹配括号
set number
set cursorline " 突出显示当前行
set autoindent " 继承前一行的缩进方式
set tabstop=4
set softtabstop=4
set shiftwidth=4
set enc=utf-8 " 文件编码
set fencs=utf-8,ucs-bom,shift-jis,gbk
set ruler " 打开状态栏标尺

syntax on
call plug#begin('~/.vim/plugged')
" 文件侧偏栏
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" 状态栏显示文件信息
Plug 'vim-airline/vim-airline'
" 自动补全括号 引号等
Plug 'jiangmiao/auto-pairs'
" 补全插件
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
" 改变vim开始界面
Plug 'mhinz/vim-startify'
" 彩虹括号
Plug 'luochen1990/rainbow'
Plug 'vim-python/python-syntax'
call plug#end()
