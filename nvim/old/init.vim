:set number
:set relativenumber
:set autoindent
:set tabstop=2
:set shiftwidth=4
:set smarttab
:set softtabstop=2
:set mouse=a

call plug#begin()

Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'rust-lang/rust.vim'

set encoding=UTF-8
source ~/.local/share/nvim/plugged/awesome-vim-colorschemes/colors/happy_hacking.vim

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
nmap <F8> :TagbarToggle<CR>
nmap <M-t> :tabnew<CR>
nmap <M-w> :tabclose<CR>
nmap <M-Right> :tabnext<CR>
nmap <M-Left> :tabprevious<CR>

:set completeopt-=preview 

call plug#end()


nnoremap <C-e> :NERDTreeToggle<CR>

hi Normal guibg=none ctermbg=none
hi LineNr guibg=none ctermbg=none
hi Folded guibg=none ctermbg=none
hi NonText guibg=none ctermbg=none
hi SpecialKey guibg=none ctermbg=none
hi VertSplit guibg=none ctermbg=none
hi SignColumn guibg=none ctermbg=none
hi EndOfBuffer guibg=none ctermbg=none
