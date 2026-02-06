;; vim: ft=query
;; extends

(function_declaration
  name: (identifier) @AlabasterDefinition)

(assignment_statement
  (variable_list
    name: (dot_index_expression
            field: (identifier) @AlabasterDefinition (#set! priority 140)))
  (expression_list
    value: (function_definition)))

(assignment_statement
  (variable_list
    name: (identifier) @AlabasterDefinition (#set! priority 140))
  (expression_list
    value: (function_definition)))

(function_declaration
  name: (dot_index_expression
          field: (identifier) @AlabasterDefinition))

(table_constructor
  (field name: (identifier) @AlabasterString))

(hash_bang_line) @AlabasterHashbang

;; Highlight variable names in assignments (any assignment, not just functions)
(assignment_statement
  (variable_list
    name: (identifier) @AlabasterVariable)
  (#set! priority 130))

;; Highlight variable names in local declarations (with or without assignment)
(variable_declaration
  (variable_list
    name: (identifier) @AlabasterVariable)
  (#set! priority 130))

;; Highlight function parameters
(function_definition
  (parameters
    (identifier) @AlabasterVariable)
  (#set! priority 130))

(function_declaration
  (parameters
    (identifier) @AlabasterVariable)
  (#set! priority 130))

; This query tries to catch ALL strings and give them higher priority (110) than the default (100) so they use @AlabasterString (green) instead of being overridden by the @string.regexp.lua → Special link.
;; This should make ALL strings green, including the regex ones, while leaving other Special elements (that aren't strings) unchanged.
;;
;; Force regex strings to use string color instead of Special
((string) @AlabasterString
 (#set! "priority" 130))

(table_constructor
  (field
    name: (identifier) @AlabasterString (#set! priority 140))   ; ← here, right after the capture
  ; Optional: exclude bracketed/quoted keys if you want
  (#not-has-parent? @AlabasterString bracketed_field))


(function_declaration
  name: (dot_index_expression field: (identifier) @AlabasterDefinition) (#set! priority 130))


;; ("local"    @mykeyword (#set! priority 140))
;; ("function" @mykeyword (#set! priority 140))
;; ("if"       @mykeyword (#set! priority 140))
;; ("elseif"   @mykeyword (#set! priority 140))
;; ("else"     @mykeyword (#set! priority 140))
;; ("then"     @mykeyword (#set! priority 140))
;; ("for"      @mykeyword (#set! priority 140))
;; ("in"       @mykeyword (#set! priority 140))
;; ("while"    @mykeyword (#set! priority 140))
;; ("repeat"   @mykeyword (#set! priority 140))
;; ("until"    @mykeyword (#set! priority 140))
;; ("do"       @mykeyword (#set! priority 140))
("return"   @mykeyword (#set! priority 140))
;; ("end"      @mykeyword (#set! priority 140))
;; ("and"      @mykeyword (#set! priority 140))
;; ("or"       @mykeyword (#set! priority 140))
;; ("not"      @mykeyword (#set! priority 140))
