set ai et sta sw=2 ts=2 st=2 tw=78 sts=2 cc=+2
autocmd Filetype ruby,eruby set omnifunc=rubycomplete#Complete
autocmd BufWritePost *.rb !ruby -c <afile>

  " Ruby
    let g:ruby_minlines = 500
    let g:rubycomplete_buffer_loading = 1
    let g:rubycomplete_rails = 1
