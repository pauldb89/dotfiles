set nocompatible                  "Don't allow vim to behave like vi
set noswapfile                    "Don't create swp files
set backspace=indent,eol,start    "Usual end
set autoindent                    "Auto indentation
set smartindent                   "Smart indentation
set ruler                         "Show the cursor position
set showcmd                       "Show the number of lines selected
set hlsearch                      "Highlight the last searched pattern
set ignorecase                    "Ignore case in search by default
set smartcase                     "Upper case letter in search pattern => case sensitive search
set showmatch                     "Cursor jumps to matching paranthesis when in insert mode
set bg=dark                       "Enable magical colors
set nowrap                        "Don't wrap long lines
set textwidth=80                  "80 chars per line
set gdefault                      "Replace all matches in a line by default
set selectmode=mouse              "Select code using the mouse
set number                        "Enable line numbering

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set formatoptions=cqt

au InsertEnter * :set nohlsearch  "Disable search when entering insert mode
au InsertLeave * :set hlsearch    "Reenable it back

":set makeprg=make\ %<\ LDLIBS=\"-lm\ -fopenmp\ -lboost_program_options\"\ CFLAGS=\"-Wall\ -Wno-unused-result\ -fno-strict-aliasing\ -O2\ -static\"\ CPPFLAGS=\"-Wall\ -std=c++0x\ -Wno-unused-result\ -fno-strict-aliasing\ -O2\ -static\"

imap <F2> <ESC>:w<CR>a
imap <F3> <ESC>:tabnew<CR>:e 
imap <F5> <ESC>:tabprev<CR>
imap <F6> <ESC>:tabnext<CR>a
imap <F7> <ESC>:make check<CR>
imap <F8> <ESC>:w<CR>:make<CR>
imap <F9> <ESC>:w<CR>:make<CR>:!time ./%<<CR>
map <F2> <ESC>:w<CR>
map <F3> <ESC>:tabnew<CR>:e 
map <F5> <ESC>:tabprev<CR>
map <F6> <ESC>:tabnext<CR>
map <F7> <ESC>:make check<CR>
map <F8> <ESC>:w<CR>:make run_extractor<CR>
map <F9> <ESC>:w<CR>:make<CR>:!time ./%<<CR>
map < <ESC>:cprev<CR>
map > <ESC>:cnext<CR>
map <F4> <ESC>:q!<CR>

syntax enable

" highlight eol spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
