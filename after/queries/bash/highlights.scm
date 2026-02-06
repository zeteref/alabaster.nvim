;; vim: ft=query
;; extends

(function_definition
  name: (word) @AlabasterDefinition)

((program . (comment) @AlabasterHashbang)
 (#match? @AlabasterHashbang "^#!/"))

(declaration_command
  (variable_name) @AlabasterVariable
  (#set! priority 130))
  
(declaration_command
  (variable_assignment
    name: (variable_name) @AlabasterVariable
    (#set! priority 130)))

(variable_assignment
  name: (variable_name) @AlabasterVariable
  (#set! priority 130))


(command
  name: (command_name) @mykeyword
  (#any-of? @mykeyword "exit" "return"))


; Make | (pipe) bold
[
  "|"
  "!"          ; less common, but pipe with stderr redirect
] @myoperator
