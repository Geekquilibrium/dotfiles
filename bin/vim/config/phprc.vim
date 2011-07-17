"============== General Settings ===============
set ai et sta sw=2 sts=2 tw=80 ts=2 cc=+2
set omnifunc=phpcomplete#CompletePHP

"============== Filetype stuff ===============
filetype plugin on
filetype indent on

" Yaml indentation and tab correction
autocmd FileType yaml :set foldmethod=indent
autocmd FileType yaml :set foldcolumn=4
autocmd FileType yaml :match yamlTab /\t\+/
autocmd FileType yaml autocmd BufWritePre <buffer> :call CheckTabs()

" PHP Stuff
autocmd FileType php let php_folding = 1
autocmd FileType php let php_noShortTags = 1
autocmd FileType php let php_parent_error_close = 1
autocmd FileType php let php_parent_error_open = 1
autocmd FileType php let php_large_files = 0

"============== Script configs ===============

let g:php_smart_members=1
let g:php_alt_properties=1
let g:php_smart_semicolon=1
let g:php_alt_construct_parents=1

" Detect file types
  augroup FileTypeDetect
    autocmd BufRead,BufNewFile *httpd*.conf setfiletype=apache "Apache config files
    autocmd BufRead,BufNewFile .htaccess setfiletype=apache "htaccess files
    autocmd BufRead,BufNewFile *inc setfiletype=php "PHP include files
    autocmd BufRead,BufNewFile *.phtml setfiletype=php "Zend framework templates
    autocmd BufRead,BufNewFile *.thtml setfiletype=php "CakePHP templates
    autocmd BufRead,BufNewFile *.ctp setfiletype=php "CakePHP templates
    autocmd BufRead,BufNewFile *.module setfiletype=php
    autocmd BufRead,BufNewFile *.install setfiletype=php
    autocmd BufRead,BufNewFile *.test setfiletype=php
    autocmd BufWritePost *.php !php -d display_errors=on -l <afile>
  augroup END

" Plugins
  " CakePHP
    let g:cakephp_auto_set_project = 1
    let g:cakephp_app = "/path/to/cakephp_app/"
    nnoremap <Space>cc :Ccontroller
    nnoremap <Space>cm :Cmodel
    nnoremap <Space>cv :Cview
    nnoremap <Space>cl :Clog
