" my filetype file
augroup filetypedetect
    au! BufRead,BufNewFile *.clp          setfiletype clp
    au! BufRead,BufNewFile *.CLP          setfiletype clp
    au! BufRead,BufNewFile *.clle         setfiletype clp
    au! BufRead,BufNewFile *.CLLE         setfiletype clp
augroup END
