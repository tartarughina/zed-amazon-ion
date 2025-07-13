; Comments
(line_comment) @comment
(block_comment) @comment

; Schema keywords
"schema_header" @keyword
"import" @keyword.control.import
"type" @keyword

; Ion literals (inherited from Ion)
(null) @constant.builtin
(bool) @constant.builtin.boolean
(int) @constant.numeric.integer
(float) @constant.numeric.float
(decimal) @constant.numeric
(timestamp) @constant.numeric

; Strings and symbols
(string) @string
(symbol) @string.symbol
(blob) @string.special
(clob) @string.special

; Containers
"[" @punctuation.bracket
"]" @punctuation.bracket
"(" @punctuation.bracket
")" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket

; Separators
"," @punctuation.delimiter
":" @punctuation.delimiter

; Annotations
(annotation) @attribute
"::" @operator

; Field names in structs - first child is the key
(field . (symbol) @property)
(field . (string) @property)

; Special schema field names
((field . (symbol) @keyword.other)
  (#match? @keyword.other "^(name|type|imports|id|fields|element|valid_values|regex|codepoint_length|container_length|precision|scale|timestamp_precision|annotations|occurs|ordered_elements|closed)$"))
