set guifont=Source\ Code\ Pro\ for\ Powerline:h14

syntax on
colorscheme default
set number
set tabstop=4
set smartindent

augroup markdown

" remove previous autocmds
    autocmd!

" set every new or read *.md buffer to use the markdown filetype 
    autocmd BufRead,BufNew *.md setf markdown

augroup END

set laststatus=2

set t_Co=256

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
