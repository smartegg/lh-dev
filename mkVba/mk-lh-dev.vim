"=============================================================================
" $Id$
" File:         mkVba/mk-lh-dev.vim                               {{{1
" Author:       Luc Hermitte <EMAIL:hermitte {at} free {dot} fr>
"		<URL:http://code.google.com/p/lh-vim/>
" Version:      1.0.2
let s:version = '1.0.2'
" Created:      02nd Mar 2012
" Last Update:  $Date$
"------------------------------------------------------------------------
" Description:
"       vimball archive builder for lh-dev
" 
"------------------------------------------------------------------------
" Installation:
"       Drop this file into {rtp}/mkVba
"       Requires Vim7+
" }}}1
"=============================================================================

let s:project = 'lh-dev'
cd <sfile>:p:h
try 
  let save_rtp = &rtp
  let &rtp = expand('<sfile>:p:h:h').','.&rtp
  exe '33,$MkVimball! '.s:project.'-'.s:version
  set modifiable
  set buftype=
finally
  let &rtp = save_rtp
endtry
finish
autoload/lh/dev.vim
autoload/lh/dev/attribute.vim
autoload/lh/dev/c/attribute.vim
autoload/lh/dev/c/function.vim
autoload/lh/dev/class.vim
autoload/lh/dev/cpp.vim
autoload/lh/dev/cpp/function.vim
autoload/lh/dev/cpp/types.vim
autoload/lh/dev/cs/attribute.vim
autoload/lh/dev/function.vim
autoload/lh/dev/instruction.vim
autoload/lh/dev/java/attribute.vim
autoload/lh/dev/naming.vim
autoload/lh/dev/option.vim
autoload/lh/dev/vim/function.vim
doc/lh-dev.txt
lh-dev-addon-info.txt
lh-dev.README
plugin/dev.vim
tests/lh/dev-comments.vim
tests/lh/dev-naming.vim
tests/lh/dev-option.vim
tests/lh/dev-params.vim
