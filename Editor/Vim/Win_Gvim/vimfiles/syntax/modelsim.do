"**************************************************************************************************** 
"File Information
"**************************************************************************************************** 
"File Name      : modelsim_do.vim 
"Project Name   : vim syntax extends file
"Description    : the modelsim .do file's syntax highlight vim file.
"                                                               Requires $VIMRUNTIME/syntax/verilog.vim to exist
"                                                               For more info on setting $VIMRUNTIME etc. see: 
"                                                               http://vimdoc.sourceforge.net/htmldoc/syntax.html
"License        : None
"**************************************************************************************************** 
"Version Information
"**************************************************************************************************** 
"Create Date    : 2017-03-01 20:10
"First Author   : Àë³¡±¯¾ç
"Last Modify    : 2017-03-01 20:20
"Last Author    : Àë³¡±¯¾ç
"Version Number : 001
"**************************************************************************************************** 
"Change History(latest change first)
"yyyy.mm.dd - Author - Your log of change
"**************************************************************************************************** 
"2017.03.01 - Àë³¡±¯¾ç - Add 3 type keyword : modelsimStatement modelsimWave and modelsimConfig.
"2017.03.01 - Àë³¡±¯¾ç - delete the spare setting.
"**************************************************************************************************** 


"-------------------------------------------------------------------------------------

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif


syn sync lines=1000

"##########################################################
"       Modelsim do file Syntax
"##########################################################

syn keyword modelsimStatement   vlib vlog vsim vmap add
syn keyword modelsimWave        wave list
syn keyword modelsimConfig      configure run alias abort log bd
syn keyword modelsimParameter   timescale incdir group divider voptargs


syn keyword modelsimAdd         add 
syn keyword modelsimAdd         atv button dataflow list memory message schematic testbrowser
syn keyword modelsimAdd         watch wave
syn keyword modelsimAdd         add_cmdhelp add_menu add_menucb add_menuitem add_separator add_submenu


syn match   modelsimAssertion   "assertion\saction" 
syn match   modelsimAssertion   "assertion\sactive" 
syn match   modelsimAssertion   "assertion\scount" 
syn match   modelsimAssertion   "assertion\senable" 
syn match   modelsimAssertion   "assertion\sfail" 
syn match   modelsimAssertion   "assertion\spass" 
syn match   modelsimAssertion   "assertion\sprofile" 
syn match   modelsimAssertion   "assertion\sreport" 
"syn match   modelsimAssertion   action active count enable fail pass profile report  

syn match   modelsimBookmark    "bookmark\sadd\swave"  
syn match   modelsimBookmark    "bookmark\sdelete\swave"  
syn match   modelsimBookmark    "bookmark\sgoto\swave"  
syn match   modelsimBookmark    "bookmark\slist\swave"  


assertion action
assertion count
bookmark add wave

syn keyword verilogConditional iff

syn keyword verilogRepeat      return break continue
syn keyword verilogRepeat      do while foreach


syn match   verilogGlobal      "`begin_\w\+"
syn match   verilogGlobal      "`end_\w\+"
syn match   verilogGlobal      "`remove_\w\+"
syn match   verilogGlobal      "`restore_\w\+"

syn match   verilogGlobal      "`[a-zA-Z0-9_]\+\>"

syn match   verilogNumber      "\<[0-9][0-9_\.]\=\([fpnum]\|\)s\>"
syn match   verilogNumber      "\<[0-9][0-9_\.]\=step\>"

syn match   verilogMethod      "\.atobin\>"
syn match   verilogMethod      "\.atohex\>"


syn match   verilogAssertion   "\<\w\+\>\s*:\s*\<assert\>\_.\{-});"

"-------------------------------------------------------------------------------
" UVM
"syn match   uvmClass           "\<uvm_\w\+\>"
"syn match   uvmClass           "\<uvm_tlm_\w\+\>"


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_verilog_syn_inits")
   if version < 508
      let did_verilog_syn_inits = 1
      command -nargs=+ HiLink hi link <args>
   else
      command -nargs=+ HiLink hi def link <args>
   endif

   " The default highlighting.
   HiLink modelsimParameter       Function
   HiLink modelsimWave                  TypeDef
   HiLink modelsimConfig                Include
   HiLink modelsimStatement       Statement

   HiLink modelsimAdd             Type
   HiLink uvmMethod                     Function
   HiLink modelsimAssertion             Error
   HiLink modelsimBookmark              Underlined

   delcommand HiLink
endif

let b:current_syntax = "modesim_do"

" vim: ts=8


