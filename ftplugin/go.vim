nnoremap <F2> gg=G``

setlocal shiftwidth=4 tabstop=4 softtabstop=4
setlocal equalprg=goimports

autocmd QuickFixCmdPost [^l]* cwindow
