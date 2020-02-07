" Specify a directory for plugins
"call plug#begin('~/.local/share/nvim/plugged')
"
"Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ }
"
"" Autocompletion
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"let g:deoplete#enable_at_startup = 1
"let g:neocomplete#enable_smart_case = 1
"
"" ----- Neovim looks and feel plugins -----
"Plug 'rafi/awesome-vim-colorschemes'
"Plug 'connorholyday/vim-snazzy'
"Plug 'luochen1990/rainbow'
"let g:rainbow_active = 1 "or enable it later via :RainbowToggle
"
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"let g:airline_powerline_fonts=1
"
"" vim stay
"Plug 'kopischke/vim-stay'
"
"" fast folding
"Plug 'Konfekt/FastFold'
"let g:fastfold_savehook = 1
"let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
"let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
"
"" ----- Language specific plugins -----
"
"" C/C++ completion
""Plug 'zchee/deoplete-clang'
"
"
"" JS env
"Plug 'pangloss/vim-javascript'
"let g:javascript_plugin_flow = 1
"Plug 'mxw/vim-jsx'
"let g:jsx_ext_required = 0
"
"" Extended Vim syntax highlighting for C and C++
"Plug 'bfrg/vim-cpp-modern'
"
"" TOML syntax highlighting
"Plug 'cespare/vim-toml'
"
"" JSON syntax highlighting
"Plug 'leshill/vim-json'
"
"" pandoc syntax highlighting
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax'
"
"" Rust support
"Plug 'rust-lang/rust.vim'
"let g:rustfmt_autosave = 1
"
"" Decaf Syntax Highlighting
"Plug 'Zamua/mocha'
"
"" MIPS Syntax Highlighting
"Plug 'harenome/vim-mipssyntax'
"
"" C, Bison, Flex syntax support
"Plug 'justinmk/vim-syntax-extra'
"
"" Initialize plugin system
"call plug#end()

set termguicolors	" true color support
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/bin/pyls'],
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

set colorcolumn=95
set signcolumn=yes
set number		" number lines on the left
set showmatch   	" highlight matching [{()}]
set wildmenu    	" visual autocompletion for command menu
set lazyredraw


set foldenable        " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10    " 10 nested fold max
set foldmethod=syntax " fold based on indent level
set viewoptions=cursor,folds,slash,unix " vim stay settings
nnoremap <space> za   " space open/closes folds

" more natural splitting defaults
set splitbelow
set splitright

set shiftround  " Round indent to multiple of 'shiftwidth'
set smartindent " Do smart indenting when starting a new line
"set autoindent  " Copy indent from current line, over to the new line
set expandtab     " makes tabs spaces
set tabstop=4     " tabs use 4 whitespace chars
set softtabstop=4 " tabs are 4 spaces
set shiftwidth=4  " tabs are aligned every 4 spaces
set backspace=indent,eol,start " comment

set laststatus=0
set background=dark
colorscheme flattened_dark


" easier split navigation using ctrl <direction>
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Left> <C-W><C-L>
nnoremap <C-Right> <C-W><C-H>

" Create empty line
map <Enter> o<ESC>
map <S-Enter> O<ESC>

" Switch between .c and .h files by w/ F3
map <F3> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>
" Switch between .cpp and .hpp files by w/ F4
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

" Clang tools
map <C-K> :py3f /usr/share/clang/clang-format.py<cr>
imap <C-K> <c-o>:py3f /usr/share/clang/clang-format.py<cr>

" Auto commands
autocmd BufNewFile *.cpp r ~/misc/templates/code/cpp
autocmd BufNewFile *.c r ~/misc/templates/code/c

au BufRead,BufNewFile *.myasm setfiletype mips
"close the preview window after completion is done.
autocmd CompleteDone * pclose!

" Functions
function StripTrailing()
    :%s/\s\+$//e
endfunction

function SudoSave()
    :w !sudo tee %
endfunction
