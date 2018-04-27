"""""""""""""""vim setting"""""""""""""""

set cursorline "底線 目前游標位置
syntax on "語法上色
"set expandtab "將文件中的tab轉成space顯示
set cindent "自動縮排 
set tabstop=4 "tab換成幾個空格
set shiftwidth=4 "自動縮排時的空格數量
set number "顯示行號
set ruler "顯示右下角詳細資訊
set incsearch "find as you type(version >= 8)
set hlsearch "find as you type(version >= 8)
set backspace=2 "delete
colorscheme inkpot "擴充語法上色
"colorscheme kolor "擴充語法上色
"colorscheme solarized "擴充語法上色

inoremap ( ()<LEFT>
inoremap < <><LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>


"""""""""""""""vundle setting"""""""""""""""

"以下為套件管理(Vundle)"
set nocompatible              " be iMproved, required
filetype off                  " required


" 啟用vundle來管理vim插件
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	" 安裝插件寫在這之後

	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	
	" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'

	" 安裝插件寫在這之前
	call vundle#end()     " required
	filetype plugin on    " required

	" 常用命令
	" :PluginList       - 查看已经安裝的插件
	" :PluginInstall    - 安裝插件
	" :PluginUpdate     - 更新插件
	" :PluginSearch     - 搜尋插件，例如 :PluginSearch xml就能搜到xml相關的插件
	" :PluginClean      - 刪除插件，把安装插件對應行删除，然後執行這個命令即可

	" h: vundle         - 獲取幫助

	" vundle的配置到此结束，下面是你自己的配置

"airline theme
let g:airline_theme = 'kolor'
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''
