filetype plugin indent on

colorscheme snazzy


let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    "\ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    "\ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    "\ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

function SetLSPShortcuts()
  nnoremap <leader>ld :call LanguageClient#textDocument_definition()<CR>
  nnoremap <leader>lr :call LanguageClient#textDocument_rename()<CR>
  nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
  nnoremap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
  nnoremap <leader>lx :call LanguageClient#textDocument_references()<CR>
  nnoremap <leader>la :call LanguageClient_workspace_applyEdit()<CR>
  nnoremap <leader>lc :call LanguageClient#textDocument_completion()<CR>
  nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
  nnoremap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
  nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
endfunction()

augroup LSP
  autocmd!
  autocmd FileType cpp,c,rs call SetLSPShortcuts()
augroup END

let g:rainbow_active = 1

" vimstay
set viewoptions=cursor,folds,slash,unix " vim stay settings

" fastfold
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

" deoplete
let g:deoplete#enable_at_startup = 1
call deoplete#custom#source('LanguageClient',
            \ 'min_pattern_length',
            \ 2)
"let g:deoplete#sources = {}
"let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']

" rust
let g:rustfmt_autosave = 1
