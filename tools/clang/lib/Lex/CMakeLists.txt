# TODO: Add -maltivec when ARCH is PowerPC.

set(LLVM_LINK_COMPONENTS support)

add_clang_library(clangLex
  HeaderMap.cpp
  HeaderSearch.cpp
  HLSLMacroExpander.cpp
  Lexer.cpp
  LiteralSupport.cpp
  MacroArgs.cpp
  MacroInfo.cpp
  ModuleMap.cpp
  PPCaching.cpp
  PPCallbacks.cpp
  PPConditionalDirectiveRecord.cpp
  PPDirectives.cpp
  PPExpressions.cpp
  PPLexerChange.cpp
  PPMacroExpansion.cpp
  PTHLexer.cpp
  Pragma.cpp
  PreprocessingRecord.cpp
  Preprocessor.cpp
  PreprocessorLexer.cpp
  ScratchBuffer.cpp
  TokenConcatenation.cpp
  TokenLexer.cpp

  LINK_LIBS
  clangBasic
  )
