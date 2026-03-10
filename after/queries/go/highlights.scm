; vim: ft=query
; extends

(package_clause
  (package_identifier) @AlabasterDefinition)

(const_declaration
  (const_spec
    name: (identifier) @AlabasterDefinition))

(function_declaration
  name: (identifier) @AlabasterDefinition)

(method_declaration
  name: (field_identifier) @AlabasterDefinition)

("return" @mykeyword
  (#set! priority 140))

("continue" @mykeyword
  (#set! priority 140))

("defer" @mykeyword
  (#set! priority 140))

(call_expression
  function: (identifier) @mykeyword
  (#match? @mykeyword "^(panic|recover)$")
  (#set! priority 140))

(function_declaration
  name: (identifier)
  parameters: (parameter_list
    (parameter_declaration
      name: (identifier) @AlabasterVariable)
    (#set! priority 140)))

(assignment_statement
  left: (expression_list
    (identifier) @AlabasterVariable)
  (#set! priority 140))

(for_statement
  (range_clause
    left: (expression_list
      (identifier) @AlabasterVariable
      (#set! priority 140))))

(short_var_declaration
  left: (expression_list
    (identifier) @AlabasterVariable
    (#set! priority 140)))

(var_declaration
  (var_spec
    name: (identifier) @AlabasterVariable
    (#set! priority 140)))

(var_declaration
  (var_spec_list
    (var_spec
      name: (identifier) @AlabasterVariable
      (#set! priority 140))))

(const_declaration
  (const_spec
    name: (identifier) @AlabasterVariable
    (#set! priority 140)))

(assignment_statement
  left: (expression_list
    (selector_expression
      operand: (identifier)
      field: (field_identifier) @AlabasterVariable
      (#set! priority 140))))
