; vim: ft=query
; extends

(function_definition
  name: (identifier) @AlabasterDefinition)

(class_definition
  name: (identifier) @AlabasterDefinition)

((module
  .
  (comment) @AlabasterHashbang)
  (#match? @AlabasterHashbang "^#!/"))

(decorator
  (identifier) @AlabasterBase)

(import_statement
  name: (dotted_name
    (identifier) @AlabasterVariable
    (#set! priority 130)))

(import_from_statement
  name: (dotted_name
    (identifier) @AlabasterVariable
    (#set! priority 130)))

(import_from_statement
  module_name: (dotted_name
    (identifier) @AlabasterDefinition
    (#set! priority 130)))

(assignment
  left: (identifier) @AlabasterVariable
  (#set! priority 130))

(dictionary
  (pair
    key: (attribute
      object: (identifier)
      attribute: (identifier) @AlabasterVariable
      (#set! priority 130))))

(function_definition
  name: (identifier)
  parameters: (parameters
    (identifier) @AlabasterVariable
    (#set! priority 130)))

(function_definition
  name: (identifier)
  parameters: (parameters
    (identifier)
    (default_parameter
      name: (identifier) @AlabasterVariable
      (#set! priority 130))))

(for_in_clause
  left: (identifier) @AlabasterVariable
  (#set! priority 130))

(generator_expression
  body: (identifier) @AlabasterVariable
  (#set! priority 130))

(except_clause
  value: (as_pattern
    alias: (as_pattern_target
      (identifier) @AlabasterVariable
      (#set! priority 130))))

("in" @NormalBold
  (#set! priority 140))

("or" @NormalBold
  (#set! priority 140))

("not" @NormalBold
  (#set! priority 140))

("and" @NormalBold
  (#set! priority 140))

("del" @NormalBold
  (#set! priority 140))

("return" @mykeyword
  (#set! priority 140))

("continue" @mykeyword
  (#set! priority 140))

("raise" @mykeyword
  (#set! priority 140))
