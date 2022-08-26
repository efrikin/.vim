setlocal shiftwidth=4 tabstop=4 softtabstop=4
setlocal makeprg=golangci-lint\ run
autocmd BufWritePre <buffer> execute "normal! mz:mkview\<esc>:%!goimports-safe.sh\<esc>:loadview\<esc>`z"
" autocmd BufWritePost *.go silent make! <afile> | silent redraw!
autocmd QuickFixCmdPost [^l]* cwindow

