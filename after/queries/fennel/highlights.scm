; vim: ft=query
; extends

; (fn
;   name: (symbol) @AlabasterDefinition)
;   ; TODO: add this when https://github.com/nvim-treesitter/nvim-treesitter/issues/1788 is fixed
;   ; docstring: (string)? @AlabasterComment
; (fn
;   name: (multi_symbol (symbol) @AlabasterDefinition))
; (global
;   (binding
;     (symbol) @AlabasterDefinition))
(list
  (symbol) @function.macro
  (#match? @function.macro "^macro$")
  (symbol) @AlabasterDefinition)

(lambda_form
  call: (symbol)
  name: (symbol) @AlabasterDefinition
  (#set! priority 140))

(fn_form
  call: (symbol)
  name: (symbol) @AlabasterDefinition
  (#set! priority 140))

(binding_pair
  lhs: (symbol_binding) @AlabasterVariableDeclaration
  (#set! priority 140))

(table_binding_pair
  value: (symbol_binding) @AlabasterVariableDeclaration
  . ; anchor: must be last
  (#set! priority 140))

args: (sequence_arguments
  item: (symbol_binding) @AlabasterVariableDeclaration
  (#set! priority 140))

(list
  call: (symbol) @_call
  (#eq? @_call "tset")
  . ; anchor: call and item must be adjacent siblings
  item: (symbol) @AlabasterVariable
  (#set! priority 140))

(list
  call: (symbol) @_call
  (#eq? @_call "set")
  . ; anchor: call and item must be adjacent siblings
  item: (symbol) @AlabasterVariable
  (#set! priority 140))

(set_form
  call: (symbol)
  lhs: (multi_symbol
    base: (symbol_fragment)
    member: (symbol_fragment) @AlabasterVariable
    .
    (#set! priority 140)))

; ((program . (hashfn) @AlabasterHashbang)
;  (#match? @AlabasterHashbang "^#!/")
;  (#set! "priority" 101))
