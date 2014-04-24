" File type detection for PML
augroup pml
    au!
    au! BufRead,BufNewFile *.pmlobj setfiletype pml
    au! BufRead,BufNewFile *.pmlfnc setfiletype pml
    au! BufRead,BufNewFile *.pmlfrm setfiletype pml
    au! BufRead,BufNewFile *.mac    setfiletype pml
augroup END
