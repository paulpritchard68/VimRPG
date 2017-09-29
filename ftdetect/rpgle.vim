" my filetype file
augroup filetypedetect
    au! BufRead,BufNewFile *.rpgle        setfiletype rpgle
    au! BufRead,BufNewFile *.sqlrpgle     setfiletype rpgle
    au! BufRead,BufNewFile *.RPGLE        setfiletype rpgle
    au! BufRead,BufNewFile *.SQLRPGLE     setfiletype rpgle
augroup END
