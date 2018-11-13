call plug#begin('~/vimfiles/autoload/plugged')
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'plasticboy/vim-markdown'
call plug#end()

set nocompatible		" 关闭兼容模式
syntax on			" 语法高亮
filetype on			" 开启文件类型侦测
filetype plugin on 		" 根据侦测到的不同类型加载对应的插件
set nu				" 显示行号
set lines=36 columns=150	" 设置窗口大小	
set guioptions-=T		" 隐藏工具栏
set guioptions-=m		" 隐藏菜单栏
set showcmd			" 输入命令显示
set incsearch			" 开启实时搜索功能
set hlsearch			" 高亮显示搜索结果
set ignorecase			" 搜索时大小写不敏感
set wildmenu			" 自身命令行模式智能补全
set backupext=.bak		" 以bak后缀备份
" 设置编解码
" set encoding=utf-8
" set langmenu=zh_CN.UTF-8
" language message zh_CN.UTF-8

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 显示光标当前位置
set ruler
" 高亮显示当前行/列
set cursorline
" set cursorcolumn

" 设置 gvim 显示字体
set guifont=Inconsolata

" 插件 syntastic 配置
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
