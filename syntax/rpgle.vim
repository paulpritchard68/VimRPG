if exists("b:current_syntax")
    finish
endif

syntax case ignore

" Opcodes
syntax keyword rpgleOpcode acq dealloc eval evalr eval-corr post rel
syntax keyword rpgleOpcode in out unlock
syntax keyword rpgleOpcode sorta
syntax keyword rpgleOpcode if and or else elseif endif
syntax keyword rpgleOpcode begsr callp exsr endsr leavesr
syntax keyword rpgleOpcode chain next open close commit rolbk force except feod
syntax keyword rpgleOpcode setgt setll
syntax keyword rpgleOpcode read readc reade readp readpe delete update write
syntax keyword rpgleOpcode do dou dow enddo iter leave
syntax keyword rpgleOpcode clear reset
syntax keyword rpgleOpcode dsply dump exfmt
syntax keyword rpgleOpcode for to endfor
syntax keyword rpgleOpcode monitor on-error endmon
syntax keyword rpgleOpcode select when other endsl
syntax keyword rpgleOpcode test
syntax keyword rpgleOpcode return
syntax keyword rpgleOpcode xml-into xml-sax

" Built in functions
syntax match rpgleBIF "\m%\w\+"

" Operators
syntax match rpgleOperator "\m+"
syntax match rpgleOperator "\m-"
syntax match rpgleOperator "\m*"
syntax match rpgleOperator "\m\/"
syntax match rpgleOperator "\m="
syntax match rpgleOperator "\m<>"
syntax match rpgleOperator "\m+="
syntax match rpgleOperator "\m-="

" Strings, numbers and booleans
syntax region rpgleString start=/\m'/ skip=/\m\\./ end=/\m'/
syntax region rpgleString start=/\m"/ skip=/\m\\./ end=/\m"/
syntax match rpgleBool "\m\*ON"
syntax match rpgleBool "\m\*OFF"
syntax match rpgleNumber "\m\d"

" Comments and compiler directives
syntax match rpgleComment "\m\/\/.\+$"
syntax match rpgleComment "\m^.\{6}\*.\+$"
syntax match rpgleDefine "\m^\s\{6}\/.\+$"

" Do the highlighting
highlight link rpgleOpcode Keyword
highlight link rpgleBIF Function
highlight link rpgleComment Comment
highlight link rpgleOperator Operator
highlight link rpgleString String
highlight link rpgleBool Boolean
highlight link rpgleNumber Number
highlight link rpgleDefine Define

let b:current_syntax = "rpgle"
