; Comments
(line_comment) @comment
(block_comment) @comment

; Schema keywords
"schema_header" @keyword
"import" @keyword.control.import
"type" @module

; Ion literals (inherited from Ion)
(null) @constant.builtin
(bool) @boolean
(int) @number
(float) @number.float
(decimal) @number.float
(timestamp) @character.special

; Strings and symbols
(string) @string
(symbol) @symbol
(blob) @string.special
(clob) @string.special.symbol

; Containers
["[" "]" "(" ")" "{" "}"] @punctuation.bracket

; Separators
["," ":"] @punctuation.delimiter

; Annotations
(annotation) @attribute
"::" @operator

; Field names in structs - first child is the key
(field . (symbol) @property)
(field . (string) @property)

; Special schema field names
((field . (symbol) @keyword.other)
  (#match? @keyword.other "^(name|type|imports|id|fields|element|valid_values|regex|codepoint_length|container_length|precision|scale|timestamp_precision|annotations|occurs|ordered_elements|closed)$"))
