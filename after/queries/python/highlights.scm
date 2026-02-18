;; vim: ft=query
;; extends

(function_definition
  name: (identifier) @AlabasterDefinition)
(class_definition
  name: (identifier) @AlabasterDefinition)

((module . (comment) @AlabasterHashbang)
 (#match? @AlabasterHashbang "^#!/"))

(decorator
  (identifier) @AlabasterBase)

(import_statement
  name: (dotted_name
    (identifier) @AlabasterVariable (#set! priority 130)))
 
(import_from_statement
  name: (dotted_name
    (identifier) @AlabasterVariable (#set! priority 130)))


(import_from_statement
  module_name: (dotted_name
    (identifier) @AlabasterDefinition (#set! priority 130)))
 

