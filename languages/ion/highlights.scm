; Comments
(line_comment) @comment
(block_comment) @comment

; Literals
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
