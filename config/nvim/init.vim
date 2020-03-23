source $HOME/.config/nvim/config/init.vimrc
source $HOME/.config/nvim/config/general.vimrc
source $HOME/.config/nvim/config/plugins.vimrc

" source $HOME/.config/nvim/config/keys.vimrc
" source $HOME/.config/nvim/config/line.vimrc

"" Specify a directory for plugins
"call plug#begin('~/.local/share/nvim/plugged')
"
""" Autocompletion
"" TODO
"
"" ----- Neovim looks and feel plugins -----
"Plug 'rafi/awesome-vim-colorschemes'
"Plug 'connorholyday/vim-snazzy'
"
"Plug 'luochen1990/rainbow'
"let g:rainbow_active = 1 "Enable rainbow
"
"" vim stay
"Plug 'kopischke/vim-stay'
"set viewoptions=cursor,folds,slash,unix " vim stay settings
"
"" fast folding
"Plug 'Konfekt/FastFold'
"let g:fastfold_savehook = 1
"let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
"let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
"
"" ----- Language specific plugins -----
"
"" Rust support
"Plug 'rust-lang/rust.vim'
""let g:rustfmt_autosave = 1
"call plug#end()
"
"filetype indent on  " load filetype-specific indent files
"
"" highlight last inserted text
"nnoremap gV `[v`]
"
"set termguicolors	" true color support
"set hidden
"
"set colorcolumn=95
"set signcolumn=yes
"set number		    " number lines on the left
"set cursorline      " highlight current line
"set showmatch   	" highlight matching [{()}]
"set wildmenu    	" visual autocompletion for command menu
"set lazyredraw
"
"
"set foldenable        " enable folding
"set foldlevelstart=10 " open most folds by default
"set foldnestmax=10    " 10 nested fold max
"set foldmethod=syntax " fold based on indent level
"nnoremap <space> za   " space open/closes folds
"
"set shiftround  " Round indent to multiple of 'shiftwidth'
"set smartindent " Do smart indenting when starting a new line
"set expandtab     " makes tabs spaces
"set tabstop=4     " tabs use 4 whitespace chars
"set softtabstop=4 " tabs are 4 spaces
"set shiftwidth=4  " tabs are aligned every 4 spaces
"set backspace=indent,eol,start " comment
"
"set laststatus=0
"set background=dark
"colorscheme snazzy
"
"" more natural splitting defaults
"set splitbelow
"set splitright
"
"" easier split navigation using ctrl <direction>
"nnoremap <C-Down> <C-W><C-J>
"nnoremap <C-Up> <C-W><C-K>
"nnoremap <C-Right> <C-W><C-L>
"nnoremap <C-Left> <C-W><C-H>
"
"" Create empty line
"map <Enter> o<ESC>
"map <S-Enter> O<ESC>
"
"" Switch between .c and .h files by w/ F3
"map <F3> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>
"" Switch between .cpp and .hpp files by w/ F4
"map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
"
"" Clang tools
"map <C-K> :py3f /usr/share/clang/clang-format.py<cr>
"imap <C-K> <c-o>:py3f /usr/share/clang/clang-format.py<cr>
"
""close the preview window after completion is done.
"autocmd CompleteDone * pclose!
"
"
"" Functions
"function StripTrailing()
"    :%s/\s\+$//e
"endfunction
"
"function SudoSave()
"    :w !sudo tee %
"endfunction
