" Fold according to syntax
setlocal foldmethod=syntax

" Map ctags patterns to Tagbar entries.
" This requires the Tagbar plugin.
let g:tagbar_type_pml = {
    \ 'ctagstype' : 'PML',
    \ 'kinds'     : [
        \ 'c:objects',
        \ 'm:members',
        \ 'f:methods',
    \ ],
    \ 'deffile' : expand('<sfile>:p:h:h:h') . '/ctags/pml.cnf'
\ }

