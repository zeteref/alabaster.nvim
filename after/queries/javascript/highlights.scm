;; vim: ft=query
;; extends

(function_declaration
  name: (identifier) @AlabasterDefinition)

(variable_declarator
  name: (identifier) @AlabasterDefinition
  value: (arrow_function))

(variable_declarator
  name: (identifier) @AlabasterDefinition
  value: (function_expression))

(undefined) @AlabasterConstant

(function_expression 
  name: (identifier) @AlabasterDefinition (#set! priority 140))

(function_expression 
  parameters: (formal_parameters 
    (identifier) @AlabasterVariableDeclaration (#set! priority 140)))

(assignment_expression 
  left: (identifier) @AlabasterVariable (#set! priority 140))

(arrow_function 
  parameters: (formal_parameters 
    (identifier) @AlabasterVariableDeclaration (#set! priority 140)))

(variable_declarator 
  name: (identifier) @AlabasterVariableDeclaration (#set! priority 140))

(variable_declarator 
  name: (identifier) @AlabasterDefinition (#set! priority 140)
  value: (arrow_function))

(object 
  (pair 
    key: (property_identifier) @AlabasterVariable (#set! priority 140)))

(object 
  (pair 
    key: (property_identifier) @AlabasterDefinition (#set! priority 140)
    value: (arrow_function)))

("return" @mykeyword
  (#set! priority 140))


