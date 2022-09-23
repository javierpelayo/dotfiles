# -------------------------------- #
global !p
def math():
	return vim.eval('vimtex#syntax#in_mathzone()') == '1'
endglobal
# -------------------------------- #

context "math()"
snippet ff "This \frac{}{} snippet expands only a LaTeX math context"
\frac{$1}{$2}$0
endsnippet

# EXAMPLE SNIPPETS
snippet tt "The \texttt{} command for typewritter-style font"
\texttt{$1}$0
endsnippet

snippet ff "The LaTeX \frac{}{} command"
\frac{$1}{$2}$0
endsnippet

snippet hr "The hyperref package's \href{}{} command (for url links)"
\href{${1:url}}{${2:display name}}$0
endsnippet

snippet env "New LaTeX environment" b
\begin{$1}
	$2
\end{$1}
$0
endsnippet

snippet tii "The \textit{} command for italic font"
\textit{${1:${VISUAL:}}}$0
endsnippet

# ----- Regex Snippets ------ #

# ----- PLACHOLDER SNIPPETS ------- #
snippet "([^a-zA-Z])trigger" "Expands if 'trigger' is typed after characters other than a-z or A-Z" r
`!p snip.rv = match.group(1)`snippet body
endsnippet

snippet "(^|[^a-zA-Z])trigger" "Expands on a new line or after characters other than a-z or A-Z" r
`!p snip.rv = match.group(1)`snippet body
endsnippet

# This trigger suppresses numbers too
snippet "(^|[\W])trigger" "Expands on a new line or after characters other than 0-9, a-z, or A-Z" r
`!p snip.rv = match.group(1)`snippet body
endsnippet

# ------- EXAMPLE OF REGEX SNIPPETS -------- #
# make mm expand to $ $ including on new lines, but not in words like communication, command, etc...

snippet "(^|[^a-zA-Z])mm" "Inline LaTeX math" rA
`!p snip.rv = match.group(1)`\$ ${1:${VISUAL:}} \$$0
endsnippet

snippet "([^a-zA-Z])ee" "e^{} superscript" rA
`!p snip.rv = match.group(1)`e^{${1:${VISUAL:}}}$0
endsnippet

snippet "(^|[^a-zA-Z])ff" "\frac{}{}" rA
`!p snip.rv = match.group(1)`\frac{${1:${VISUAL:}}}{$2}$0
endsnippet

# ---------- This class of triggers expands only after alphanumerical characters (\w) or the characters }, ), ] and | ---------------

snippet "([\w])trigger" "Expands if 'trigger' is typed after 0-9, a-z, and  A-Z" r
`!p snip.rv = match.group(1)`snippet body
endsnippet

# Of course, modify the }, ), ], and | characters as you wish
snippet "([\w]|[\}\)\]\|])trigger" "Expands after 0-9, a-z, A-Z and }, ), ], and |" r
`!p snip.rv = match.group(1)`snippet body
endsnippet

# This trigger suppresses expansion after numbers
snippet "([a-zA-Z]|[\}\)\]\|])trigger" "Expands after a-z, A-Z and }, ), ], and |" r
`!p snip.rv = match.group(1)`snippet body
endsnippet

# ---- The snippet below expands after letters and closing delimiters, but not in numbers lik 100 -------
snippet "([a-zA-Z]|[\}\)\]\|'])00" "Automatic 0 subscript" rA
`!p snip.rv = match.group(1)`_{0}
endsnippet

# More
snippet "([^a-zA-Z0-9])df" "\diff (A personal command I universally use for differentials)" rA
`!p snip.rv = match.group(1)`\diff 
endsnippet

snippet "([\w]|[\}\)\]\|])sd" "Subscript with upright text" rA
`!p snip.rv = match.group(1)`_{\mathrm{${1:${VISUAL:}}}}$0
endsnippet


