set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround.git'
Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

" vim-airlinePlugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts=1
set t_Co=256
set laststatus=2

" autocompletion
Plugin 'valloric/youcompleteme'
Plugin 'rdnetto/YCM-Generator'
" Plugin 'Shougo/deoplete.nvim'
" " Use deoplete.
" let g:deoplete#enable_at_startup = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_python_binary_path = 'python'
let g:ycm_complete_in_comments = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = "~/.config/nvim/.ycm_extra_conf.py"
let g:ycm_error_symbol='✗'
let g:ycm_warning_symbol='▲'

" tabular
Plugin 'godlygeek/tabular'

" vim stay
Plugin 'kopischke/vim-stay'

" fast folding
Plugin 'Konfekt/FastFold'
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

" rust lang support
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'
let g:racer_cmd = "/home/ivan/.cargo/bin/racer"
let g:rustfmt_autosave = 1

" doxygen plugin!
Plugin 'vim-scripts/DoxygenToolkit.vim'
let g:DoxygenToolkit_authorName="Ivan Mondragon"

" TOML language support
Plugin 'cespare/vim-toml'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable   	" enable syntax processing
set hidden

set colorcolumn=80
set number      	" number lines on the left
set relativenumber  	" relative number lines on the left
"set cursorline  	" highlight current line
set showmatch   	" highlight matching [{()}]
set wildmenu    	" visual autocompletion for command menu
set lazyredraw

set foldenable        " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10    " 10 nested fold max
set foldmethod=syntax " fold based on indent level
set viewoptions=cursor,folds,slash,unix " vim stay settings
nnoremap <space> za   " space open/closes folds

set shiftround  " Round indent to multiple of 'shiftwidth'
set smartindent " Do smart indenting when starting a new line
set autoindent  " Copy indent from current line, over to the new line
set expandtab     " makes tabs spaces
set tabstop=4     " tabs use 4 whitespace chars
set softtabstop=4 " tabs are 4 spaces
set shiftwidth=4  " tabs are aligned every 4 spaces
set backspace=indent,eol,start " comment

set background=dark
colorscheme solarized
"set termguicolors

" Create empty line
map <Enter> o<ESC>
map <S-Enter> O<ESC>

" Switch between .c and .h files by w/ F3
map <F3> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>
" Switch between .cpp and .hpp files by w/ F4
map <F4> :e %:p:s,.hpp$,.X123X,:s,.cpp$,.hpp,:s,.X123X$,.cpp,<CR>

" Apply YCM FixIt
map <F7> :YcmCompleter FixIt<CR>

" Clang tools
map <C-K> :py3f /usr/share/clang/clang-format.py<cr>
imap <C-K> <c-o>:py3f /usr/share/clang/clang-format.py<cr>

" Auto commands
autocmd BufNewFile *.cpp r ~/Templates/code/cpp
autocmd BufNewFile *.c r ~/Templates/code/c

" Functions
function StripTrailing()
    :%s/\s\+$//e
endfunction

function SudoSave()
    :w !sudo tee %
endfunction
