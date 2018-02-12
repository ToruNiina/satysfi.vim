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
syn match   satysfiKeyword "let\(\-\(rec\|mutable\|inline\|block\|math\)\)*"
syn match   satysfiKeyword "\(inline\|block\|math\)\-cmd"
syn match   satysfiKeyword "\_sin\_s"
syn match   satysfiKeyword "\_scommand\_s"
syn match   satysfiKeyword "\_stype\_s"
syn keyword satysfiKeyword match with when as fun
syn keyword satysfiKeyword val constraint direct of
syn keyword satysfiKeyword module struct sig end document
hi def link satysfiKeyword Keyword

syn match   satysfiPrimitiveType "\_s\(unit\|bool\|int\|float\|length\|string\|inline\-text\|inline\-boxes\)\_s"
hi def link satysfiPrimitiveType Type

syn match   satysfiHex     "\<\-\?0[xX]\x\+"
syn match   satysfiInteger "\<\-\?\(0\|[1-9]\d*\)"
syn match   satysfiPoint   "\<\-\?\(0\|[1-9]\d*\)pt"
syn match   satysfiFloat   "\<\-\?\([1-9]\d*\|0\)\.\d*"
hi def link satysfiHex     Constant
hi def link satysfiInteger Constant
hi def link satysfiPoint   Constant
hi def link satysfiFloat   Constant

syn match   satysfiOperator "\_s\-\_s"
syn match   satysfiOperator "\(+\|*\|/\|+\.\|-\.\|+'\|-'\|*'\|/'\|=\)"
syn match   satysfiOperator "\(<'\|>'\|>\|<\|<=\|>=\|==\|<>\|&&\|||\)"
syn match   satysfiOperator "\(+++\|++\|:\|::\|->\|<-\||>\)"
syn keyword satysfiOperator mod and not
hi def link satysfiOperator Operator

syn match   satysfiVariable "\#\(\w\|\-\)\+"
hi def link satysfiVariable Identifier

syn region  satysfiQtLiteral start="`" end="`"
hi def link satysfiQtLiteral String

syn match   satysfiPreProc display "@\(require\|import\):.*$"
hi def link satysfiPreProc PreProc

syn match   satysfiCommand "+\(\w\|\-\)\+"
syn match   satysfiCommand /\\\(\w\|\-\)*/
hi def link satysfiCommand Statement

let b:current_syntax="satysfi"
