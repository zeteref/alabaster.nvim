; vim: ft=query
; extends
;
(block_mapping_pair
  key: (flow_node) @key.node
  (#match? @key.node "^\\$")
  (#set! priority 140)
)
