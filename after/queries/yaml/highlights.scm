; vim: ft=query
; extends
;
(block_mapping_pair
  key: (flow_node) @dollar.property.yaml
  (#match? @dollar.property.yaml "^\\$")
  (#set! priority 140)
)
