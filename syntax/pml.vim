" Vim syntax file
" Language:   PML (Aveva's Programmable Macro Language)
" Maintainer: Sebastien Watteau <swatteau@gmail.com>
" Updated:    2009-09-05
"

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

" PML is case insensitive
syn case ignore

" Identifiers and types
syn match pmlId             "[a-zA-Z_][a-zA-Z0-9_]*" contained
syn match pmlId             "![a-zA-Z_][a-zA-Z0-9_]*" contained
syn match pmlId             "!![a-zA-Z_][a-zA-Z0-9_]*" contained
syn match pmlId             "\.[a-zA-Z_][a-zA-Z0-9_]*" contained
syn match pmlType           "[a-zA-Z_][a-zA-Z0-9_]*" contained


" Statements
syn keyword pmlKeyword    break skip return
syn keyword pmlKeyword    handle elsehandle endhandle
syn keyword pmlKeyword    object nextgroup=pmlType skipwhite
syn keyword pmlKeyword    form function setup exit
syn keyword pmlKeyword    member nextgroup=pmlId skipwhite
syn keyword pmlKeyword    method nextgroup=pmlId skipwhite
syn keyword pmlKeyword    is nextgroup=pmlType skipwhite

" Conditionals
syn keyword pmlConditional  if elseif else endif then

" Loops
syn keyword pmlRepeat       do enddo values indices from to by

" Operators
syn keyword pmlOperator     and or not
syn keyword pmlOperator     lt le leq eq ne neq gt ge geq
syn keyword pmlOperator     inset defined

" Comments
syn match   pmlLineComment  "--.*$" contains=pmlTodo
syn match   pmlLineComment  "\$\*.*$" contains=pmlTodo
syn region  pmlBlockComment start="\$(" end="\$)"
syn keyword pmlTodo         TODO FIXME XXX contained

" Strings
syn region  pmlString       start="'" end="'"
syn region  pmlString       start="|" end="|"

" Numbers
syn match pmlNumber         "\<\d\+\>"
syn match pmlNumber         "\<\d\+\.\d\+\>"

" Booleans
syn keyword pmlBoolean      true false

" Builtin types, functions and values
syn match   pmlBuiltin      "!this"
syn keyword pmlBuiltin      any none
syn keyword pmlBuiltin      array boolean real string

" PML 1 commands
syn keyword pmlCommand      all ce collect for var with

" Highlighting
hi link pmlId               Identifier
hi link pmlType             Type
hi link pmlStatement        Statement
hi link pmlConditional      Conditional
hi link pmlRepeat           Repeat
hi link pmlOperator         Operator
hi link pmlLineComment      Comment
hi link pmlBlockComment     Comment
hi link pmlTodo             Todo
hi link pmlString           String
hi link pmlNumber           Number
hi link pmlBoolean          Boolean
hi link pmlBuiltin          Type 
hi link pmlCommand          Macro
hi link pmlKeyword          Keyword

" Folding rules
syn region pmlMethodFold    matchgroup=pmlKeyword start="\<define\>" end="\<end\(function\|method\|object\)\>" transparent fold 

let b:current_syntax = "pml"


