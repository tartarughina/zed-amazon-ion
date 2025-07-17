; Comments
(line_comment) @comment
(block_comment) @comment

; Literals
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
(operator) @operator

; Field names in structs - first child is the key
(field . (symbol) @property)
(field . (string) @property)
