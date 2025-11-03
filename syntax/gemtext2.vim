" Vim syntax file
" Language:             Gemtext markup language
" Maintainer:           Suneel Freimuth <suneelfreimuth1@gmail.com>
" Latest Revision:      2020-11-21
" Filenames:            *.gmi
"
" Modified by:          Peter Kleiweg <kleiweg@ziggo.nl>
"                       2023-10-10

if exists('b:current_syntax')
    finish
endif

syntax match  Heading  /^#\{1,3}\zs.*$/
syntax match  List     /^\*[ \t]\zs.\+/
syntax match  LinkURL  /^=>\s*\zs\S\+/ nextgroup=Date skipwhite
syntax match  Date     /[0-9]\{4}-[01][0-9]-[0-3][0-9]\ze\(\s\|$\)/ contained
syntax match  Quote    /^>\zs.*/
syntax region Preformatted start=/^```/ end=/^```/

highlight default link Heading      Special
highlight default link List         Statement
highlight default link LinkURL      Underlined
highlight default link Quote        String
highlight default link Preformatted Constant
highlight default link Date         Number

let b:current_syntax = 'gemtext2'

