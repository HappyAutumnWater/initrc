let mapleader=" "             " 设置leader键"
set nocompatible              " be iMproved, required
filetype off                  " required

" mvim配置
set guifont=Monaco:h16


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ervandew/supertab'
Plugin 'maksimr/vim-jsbeautify'
"go build插件
"Plugin 'fatih/vim-go'
"Python补全
Plugin 'davidhalter/jedi-vim'
"go补全
"Plugin 'nsf/gocode', {'rtp': 'vim/'}
" language server plugin
Plugin 'w0rp/ale'

Plugin 'scrooloose/nerdcommenter'
"git补全
"Plugin 'tpope/vim-fugitive'
"修改颜色
Plugin 'alessandroyorba/arcadia'
"对称括号
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"文件目录
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe',{'do':'python3 install.py'}



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"vim属性
set number		    "行号
set ignorecase		"搜索时忽略大小写
set tabstop=4		"按下 Tab 键时，Vim 显示的空格数
"set softtabstop=0	"Tab 转为多少个空格
set expandtab		"自动将 Tab 转为空格
set shiftwidth=4	"在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数
set smarttab		"根据文件中其他地方的缩进空格个数来确定一个 tab 是多少个空格
set autoindent		"按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致
set smartindent		"???
set mouse=a         "支持鼠标
syntax on		    "打开语法高亮。自动识别代码，使用多种颜色显示
set hlsearch		"搜索时，高亮显示匹配结果
set incsearch		"输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set scrolloff=7		"光标移动到buffer的顶部和底部时保持3行距离
set ruler		    "在状态栏显示光标的当前位置（位于哪一行哪一列）
set cul			    "高亮光标所在行
set aw              "自动保存
set backspace=indent,eol,start      "退格键
set termguicolors   "设置主题颜色
colorscheme desert  "设置主题颜色
"y/d/x/p与系统缓存区相同
set clipboard=unnamed

"vim编码
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030

" python补全插件jedi配置
let g:jedi#force_py_version = 3
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#completions_enabled = 1

"默认开启NERDTree
"autocmd vimenter * NERDTree


"let属性
let g:NERDTreeDirArrows = 1
let g:NERDTreeGlyphReadOnly       = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" 注释
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

"快捷键
map <C-m> :NERDTree <CR>            "打开目录
map <C-n> :NERDTreeClose <CR>       "关闭目录
map <S-s> :shell <CR>               "打开shell


" js json jsx html css beautify
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType cshtml noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd BufRead,BufNewFile *.cshtml noremap <buffer> <c-f> :call HtmlBeautify()<cr>

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
