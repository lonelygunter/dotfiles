:set number
:set relativenumber
:set autoindent
:set tabstop=2
:set smarttab
:set softtabstop=2
:set mouse=a
:verbose imap <CR>

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' " status bar
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/vim-markdown' " Markdown tool
Plug 'https://github.com/iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' } " Markdown preview
Plug 'junegunn/limelight.vim' " to light the current paragraph

call plug#end()

" NerdTree hotkeys
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Tagbar hotkeys
nmap <F8> :TagbarToggle<CR>

" copy and paste hotkeys
map <C-c> "+y
map <C-v> "+p

" set encoding
set encoding=UTF-8

" colorscheme
set background=light
colorscheme onehalflight

" coc.vim to confirm
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

