# save as .vimrc in appropriate directory
syn on
colorscheme koehler

augroup BashFallback
  autocmd!
  " After Vim finishes trying to detect a filetype,
  " check if &filetype is still empty and set it to bash
  autocmd BufReadPost,BufNewFile *
        \ if &filetype == '' |
        \   setfiletype bash |
        \   set syntax=bash |
        \ endif
augroup END
