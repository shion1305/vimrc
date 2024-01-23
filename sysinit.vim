set encoding=utf-8
scriptencoding=utf-8
set clipboard+=unnamed

set relativenumber
set cursorline
set smartindent
set laststatus=2

call plug#begin('~/.local/share/nvim/plugged')
Plug 'MattesGroeger/vim-bookmarks'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lervag/vimtex'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateR    emotePlugins' }
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
Plug 'lambdalisue/fern.vim'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'OmniSharp/omnisharp-vim'
Plug 'mattn/vim-sonictemplate'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'previm/previm'
Plug 'tpope/vim-repeat'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-surround'
Plug 'cohama/lexima.vim'
Plug 'rust-lang/rust.vim'
call plug#end()

"サイドバーにフォルダを展開するショートカット作成
" Ctrl+nでファイルツリーを表示/非表示する
nnoremap <silent><C-n> :Fern . -reveal=% -drawer -toggle -width=30<CR>
let g:fern#default_hidden=1 " 隠しファイルを表示する
let g:fern#renderer = 'nerdfont'
let g:fern#renderer#nerdfont#indent_markers = 1
