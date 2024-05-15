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
Plug 'https://github.com/preservim/nerdtree' " NerdTree: <ctrl+t>
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc: <v> to select + <g+c> 
Plug 'http://github.com/tpope/vim-surround' " :
    " Old text                    Command         New text
" --------------------------------------------------------------------------------
    " surr*ound_words             ysiw)           (surround_words)
    " *make strings               ys$"            "make strings"
    " [delete ar*ound me!]        ds]             delete around me!
    " remove <b>HTML t*ags</b>    dst             remove HTML tags
    " 'change quot*es'            cs'"            "change quotes"
    " <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    " delete(functi*on calls)     dsf             function calls

Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation: <:TagbarOpen> or <F8>
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
" Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/vim-markdown' " Markdown tool
    " zr: reduces fold level throughout the buffer
    " zR: opens all folds
    " zm: increases fold level throughout the buffer
    " zM: folds everything all the way
    " za: toggle a fold your cursor is on
    " zA: toggle a fold your cursor is on recursively
    " zo: open a fold your cursor is on
    " zO: open a fold your cursor is on recursively
    " zc: close a fold your cursor is on
    " zC: close a fold your cursor is on recursively
		" :TableFormat: Format the table under the cursor
		" :Toc: create a quickfix vertical window
		" :Toch: Same as :Toc but in an horizontal window.
		" :Toct: Same as :Toc but in a new tab
    " :Tocv: Same as :Toc for symmetry with :Toch and :Tocv.
    " :InsertToc: Insert table of contents at the current line.

" Plug 'https://github.com/iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' } " Markdown preview
Plug 'junegunn/limelight.vim' " to light the current paragraph: <:Limelighit>
    " Limelight [0.0 ~ 1.0]     Turn Limelight on
    " Limelight!                Turn Limelight off
    " Limelight!! [0.0 ~ 1.0]   Toggle Limelight


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

