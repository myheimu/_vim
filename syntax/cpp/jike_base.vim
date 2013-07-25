" Vim syntax file
" Language:	C++ For jike base
" Maintainer:	Myheimu
" Last Change:	2013 Jul 25

syn match doubledot '::'
syn keyword cppJikeNamespace base extlibs util file indexing boost release crawl i18n nextgroup=doubledot
syn keyword cppJikeBaseMacro	LOG VLOG VLOG_RAISED CHECK INFO ERROR
syn keyword cppJikeBaseMacro	DECLARE_bool DEFINE_bool
syn keyword cppJikeBaseMacro	DECLARE_int32 DEFINE_int32
syn keyword cppJikeBaseMacro	DECLARE_int64 DEFINE_int64
syn keyword cppJikeBaseMacro	DECLARE_uint64 DEFINE_uint64
syn keyword cppJikeBaseMacro	DECLARE_double DEFINE_double
syn keyword cppJikeBaseMacro	DECLARE_string DEFINE_string
syn keyword cppJikeBaseFunc Fingerprint Fingerprint32
syn keyword cppJikeBaseFunc FingerprintToString StringToFingerprint
syn keyword cppJikeBaseFunc GetTimeInMS

" Default highlighting
if version >= 508 || !exists("did_cpp_syntax_inits")
  if version < 508
    let did_cpp_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink cppJikeNamespace Function
  HiLink cppJikeBaseMacro Macro
  HiLink cppJikeBaseFunc Function
  HiLink cppJikeBaseType Type
  delcommand HiLink
endif

