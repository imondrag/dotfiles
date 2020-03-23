call plug#begin('~/.local/share/nvim/plugged')

" colorschemes
Plug 'rafi/awesome-vim-colorschemes'
Plug 'connorholyday/vim-snazzy'

" general
Plug 'Shougo/deoplete.nvim'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'junegunn/fzf' " Multi-entry selection UI.

" editing
" Plug 'junegunn/vim-easy-align'
" Plug 'mbbill/undotree'
" Plug 'tpope/vim-commentary'
" Plug 'airblade/vim-gitgutter'
" Plug 'nathanaelkane/vim-indent-guides' " `,ig` to toggle
" Plug 'Raimondi/delimitMate'
" Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-speeddating'
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-unimpaired'
" Plug 'justinmk/vim-sneak'
" Plug 'vim-scripts/camelcasemotion'

" eye candy
Plug 'luochen1990/rainbow'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" javascript
" TODO

" rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" other
Plug 'kopischke/vim-stay'
Plug 'Konfekt/FastFold'
" Plug 'mattn/emmet-vim'
" Plug 'ciaranm/detectindent'
" Plug 'othree/html5.vim'
" Plug 'groenewege/vim-less'

call plug#end()
