set nocompatible
set backspace=indent,eol,start
set autoindent
set ruler showcmd
set hls ic is
set showmatch
set bg=dark
set nowrap

set expandtab
set tabstop=2
set shiftwidth=2
set smartindent
set formatoptions=cqt
set number

set gdefault
set selectmode=mouse

:set makeprg=make\ %<\ LDLIBS=\"-lm\"\ CFLAGS=\"-Wall\ -Wno-unused-result\ -fno-strict-aliasing\ -O2\ -static\"\ CPPFLAGS=\"-Wall\ -Wno-unused-result\ -fno-strict-aliasing\ -O2\ -static\"

imap <F2> <ESC>:w<CR>a
imap <F3> <ESC>:tabnew<CR>:e 
imap <F5> <ESC>:tabprev<CR>
imap <F6> <ESC>:tabnext<CR>a
imap <F7> <ESC>:!time ./%<<CR>
imap <F8> <ESC>:w<CR>:make<CR>
imap <F9> <ESC>:w<CR>:make<CR>:!time ./%<<CR>
map <F2> <ESC>:w<CR>
map <F3> <ESC>:tabnew<CR>:e 
map <F5> <ESC>:tabprev<CR>
map <F6> <ESC>:tabnext<CR>
map <F7> <ESC>:!time ./%<<CR>
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

" open definition in vertical split
map <C-P> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
