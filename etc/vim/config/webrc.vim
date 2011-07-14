" HTML,JAVASCRIPT,CSS 
 autocmd BufRead,BufNewFile *.scss set filetype=scss    
 autocmd BufNewFile,BufRead *.html,*.js,*.css,*.xml,*.scss setlocal ai et sta sw=4 ts=4 sts=4 st=4 tw=86 cc=+2
 autocmd Filetype css set omnifunc=csscomplete#CompleteCSS
 autocmd Filetype html set omnifunc=htmlcomplete#CompleteHTML
 autocmd Filetype javascript set omnifunc=javascriptcomplete#CompleteJAVASCRIPT


