syn keyword ssStatement return 
syn keyword ssRepeat for in
syn keyword ssConditional if else switch
syn keyword ssKeyword try import struct self

hi def link     ssStatement         Statement
hi def link     ssConditional       Conditional
hi def link     ssRepeat            Repeat
hi def link     ssKeyword           Keyword

syn keyword ssType void string char bool
syn keyword ssIntType u8 u16 u32 u64 i8 i16 i32 i64 int uint

hi def link ssType    Type
hi def link ssIntType Type

syn keyword ssBool true false
syn keyword ssPredefined nil

hi def link ssBool Boolean
hi def link ssPredefined Boolean

syn keyword ssDeclare let const

hi def link ssDeclare Keyword
hi def link ssDeclareName Identifier 

syn match   ssCharacter /'.'/
hi def link ssCharacter Character

syn match   ssFuncCall "\w\(\w\)*("he=e-1,me=e-1
syn keyword ssFunc func nextgroup=ssFuncName skipwhite skipempty

hi def link ssFuncCall Function 
hi def link ssFunc     Keyword 
hi def link ssFuncName Function 

syn match ssNumber "\v<\d+>"
hi def link ssNumber Number

syn region ssString start=/"/ skip=/\\"/ end=/"/
hi def link ssString String


syn region ssCommentLine start="//" end="$" contains=ssTodo,@Spell
hi def link ssCommentLine   Comment

syn keyword ssTodo contained TODO FIXME XXX NB NOTE
hi def link ssTodo Todo

let b:current_syntax = "sandstorm"

