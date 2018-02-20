" Vim syntax file
" Language:   SATySFi
" Maintainer: Toru Niina niina.toru.68u@gmail.com
" Repository: github.com/ToruNiina/satysfi.vim
" LICENSE:    MIT

if exists("b:current_syntax")
    finish
endif

syn match satysfiComment /%.*/
hi def link satysfiComment Comment

syn keyword satysfiKeyword if then else before while do cycle controls
syn keyword satysfiKeyword in command type
syn keyword satysfiKeyword match with when as fun
syn keyword satysfiKeyword val constraint direct of
syn keyword satysfiKeyword module struct sig end document
syn keyword satysfiKeyword let let-rec let-mutable let-inline let-block let-math
syn keyword satysfiKeyword inline-cmd block-cmd math-cmd
hi def link satysfiKeyword Keyword

syn keyword satysfiPrimitiveType unit bool int float length string
syn keyword satysfiPrimitiveType inline-text inline-boxes
hi def link satysfiPrimitiveType Type

syn match   satysfiHex     "\<\(\-\|+\)\?0\(x\|X\)\x\+\>"
syn match   satysfiInteger "\<\(\-\|+\)\?\(0\|[1-9]\d*\)\>"
syn match   satysfiFloat   "\<\(\-\|+\)\?\([1-9]\d*\|0\)\.\d*\>"
syn match   satysfiUnits   "\<\(\-\|+\)\?\(0\|[1-9]\d*\)\(\.\d*\)\?\(pt\|cm\|mm\|inch\)\>"
syn keyword satysfiBoolean true false
hi def link satysfiHex     Number
hi def link satysfiInteger Number
hi def link satysfiUnits   Number
hi def link satysfiFloat   Float
hi def link satysfiBoolean Boolean

syn match   satysfiOperator "\(+++\|++\|:\|::\|->\|<-\||>\)"
syn match   satysfiOperator "\(+\.\|-\.\|+'\|-'\|*'\|/'\|=\|+\|\-\|*\|/\)"
syn match   satysfiOperator "\(<'\|>'\|>\|<\|<=\|>=\|==\|<>\|&&\|||\)"
syn keyword satysfiOperator mod and not
hi def link satysfiOperator Operator

syn match   satysfiConstructor "\<[A-Z]\([a-zA-Z0-9]\|\-\)*\>"
hi def link satysfiConstructor Type

syn match   satysfiVariable "\#\(\w\|\-\)\+"
hi def link satysfiVariable Identifier

syn match   satysfiQtLiteral          "`.*`"
syn region  satysfiQtMultiLineLiteral start="```" end="```"
hi def link satysfiQtLiteral          String
hi def link satysfiQtMultiLineLiteral String

syn match   satysfiPreProc display "@\(require\|import\):.*$"
hi def link satysfiPreProc PreProc

syn match   satysfiCommand "+\(\w\|\-\)\+"
syn match   satysfiCommand "\\\(\w\|\-\)\+"
hi def link satysfiCommand Statement

let b:current_syntax="satysfi"
