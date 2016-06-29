set linebreak
set wrap
set linebreak
set wrap
colorscheme desert
set guifont=Monospace\ 14
map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr>
:cd /home/anubhav/workspace/test
autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
