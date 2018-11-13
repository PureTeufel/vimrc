call plug#begin('~/vimfiles/autoload/plugged')
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'plasticboy/vim-markdown'
call plug#end()

set nocompatible		" �رռ���ģʽ
syntax on			" �﷨����
filetype on			" �����ļ��������
filetype plugin on 		" ������⵽�Ĳ�ͬ���ͼ��ض�Ӧ�Ĳ��
set nu				" ��ʾ�к�
set lines=36 columns=150	" ���ô��ڴ�С	
set guioptions-=T		" ���ع�����
set guioptions-=m		" ���ز˵���
set showcmd			" ����������ʾ
set incsearch			" ����ʵʱ��������
set hlsearch			" ������ʾ�������
set ignorecase			" ����ʱ��Сд������
set wildmenu			" ����������ģʽ���ܲ�ȫ
set backupext=.bak		" ��bak��׺����
" ���ñ����
" set encoding=utf-8
" set langmenu=zh_CN.UTF-8
" language message zh_CN.UTF-8

" ��ֹ��ʾ������
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" ��ֹ�����˸
set gcr=a:block-blinkon0
" ��ʾ��굱ǰλ��
set ruler
" ������ʾ��ǰ��/��
set cursorline
" set cursorcolumn

" ���� gvim ��ʾ����
set guifont=Inconsolata

" ��� syntastic ����
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
