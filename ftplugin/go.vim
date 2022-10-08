setlocal shiftwidth=4 tabstop=4 softtabstop=4
setlocal makeprg=golangci-lint\ run
setlocal equalprg=goimports
autocmd QuickFixCmdPost [^l]* cwindow
