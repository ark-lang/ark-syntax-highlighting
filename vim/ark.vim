" Vim syntax file
" Language: ark

if exists("b:current_syntax")
	finish
endif

syn keyword arkKeywords if else for match
syn keyword arkKeywords mut return break continue func
syn keyword arkKeywords int float double bool uint rune 
syn keyword arkKeywords f32 f64 f128 i8 i16 i32 i64 i128 u8 u16 u32 u64 u128 usize
syn keyword arkKeywords struct packed impl use trait

syn match arkNum "\<\d\+\>[df]?"
syn match arkNum "\v<[0-9_]+>"
syn match arkNum "\v<.?[0-9_]+[df]?>"
syn match arkNum "\<0[bB][01]\+\>"
syn match arkNum "\<0[xX]\x\+\>"
syn match arkNum "\<0[oO]\o\+\>" 

syn match arkComment /\/\/.*/
syn region arkComment start=#\/\*# end=#\*\/#

syn region arkString start=/"/ skip=/\\"/ end=/"/ 

highlight default link arkKeywords Keyword
highlight default link arkNum Number
highlight default link arkString String
highlight default link arkComment Comment
