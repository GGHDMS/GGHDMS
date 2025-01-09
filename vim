" .ideavimrc is a configuration file for IdeaVim plugin. It uses
"   the same commands as the original .vimrc configuration.
" You can find a list of commands here: https://jb.gg/h38q75
" Find more examples here: https://jb.gg/share-ideavimrc


"" -- Suggested options --
" Show a few lines of context around the cursor. Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
" Do incremental searching.

"" -- Map IDE actions to IdeaVim -- https://jb.gg/abva4t
"" Map \r to the Reformat Code action
"map \r <Action>(ReformatCode)

"" Map <leader>d to start debug
"map <leader>d <Action>(Debug)

"" Map \b to toggle the breakpoint on the current line
"map \b <Action>(ToggleLineBreakpoint)
call plug#begin()
""" Plugins  --------------------------------
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
" Plug 'vim-scripts/argtextobj.vim'
Plug 'tommcdo/vim-exchange'
Plug 'kana/vim-textobj-entire'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'machakann/vim-highlightedyank'
Plug 'preservim/nerdtree'
call plug#end()

""" Plugin settings -------------------------
" let g:argtextobj_pairs="[:],(:),<:>"
let g:highlightedyank_highlight_duration=1000
let g:NERDTreeMapActivateNode='l'
let g:NERDTreeMapJumpParent='h'

""" Common settings -------------------------
" set showmode
set scrolloff=10
set incsearch
set number relativenumber
set visualbell
set ignorecase
set smartcase
" set hlsearch
set noerrorbells
" set matchpairs+=a:b
set surround

""" Idea specific settings ------------------
set ideajoin
" set ideastrictmode

set multicursor

let mapleader=" "
set easymotion
map <Leader> <Plug>(easymotion-prefix)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>a <Plug>(easymotion-jumptoanywhere)
map <Leader>u <c-r>

" scrollingk
nnoremap <leader>1 :NERDTreeFind<CR>

" action"
nnoremap <leader>e :action ShowErrorDescription<CR>
nnoremap <leader>q :action QuickJavaDoc<CR>

function! YankAndReturnStart(start, end)
    execute "normal! " . a:start . "V" . a:end . "y"
    normal! '>
endfunction


vmap Y :<C-U>call YankAndReturnStart("'<", "'>")<CR>

nmap <leader>p "0p
nnoremap <c-p> "0P

