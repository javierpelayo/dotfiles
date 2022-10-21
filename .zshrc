PROMPT='%n@%m %~ $ '
autoload -Uz compinit
compinit
neofetch
set -o autopushd
function inktex() {
	inkscape --export-pdf="$1".pdf "$1".svg --export-latex
}

alias itac="cd ~/Desktop/selfstudy/introduction_to_algorithms/mit_course"
alias itab="cd ~/Desktop/selfstudy/introduction_to_algorithms/book_notes"
alias csheete="nvim ~/Desktop/notes/linux/cheatsheet/cheatsheet.tex"
alias csheet="zathura ~/Desktop/notes/linux/cheatsheet/cheatsheet.pdf"
alias csheet_is="firefox https://inkscape.org/doc/keys.html"
alias csheet_nvim="firefox https://vim.rtorr.com/"
alias csheet_latex1="zathura ~/Desktop/notes/latex/latex_math_symbols.pdf"
alias csheet_latex2="zathura ~/Desktop/notes/latex/latexsheet.pdf"
alias csheet_latex3="zathura ~/Desktop/notes/latex/latexcheatsheet.pdf"
alias csheet_latexw1="zathura ~/Desktop/notes/latex/book_latex_wiki.pdf"
alias csheet_latexw2="zathura ~/Desktop/notes/latex/book_lshort.pdf"
alias snippets="cd ~/.config/nvim/UltiSnips/"

alias math109="cd ~/Desktop/ucsd/fall_2022/mathematical_reasoning_math109"
alias math100a="cd ~/Desktop/ucsd/fall_2022/abstract_algebra_math100a"
alias math183="cd ~/Desktop/ucsd/fall_2022/statistical_methods_math183"
alias cse8b="cd ~/Desktop/ucsd/fall_2022/intro_programming_cse8b"
alias ucsd="cd ~/Desktop/ucsd/"

PATH="$PATH:/home/javier/.local/bin:/usr/bin/qmake"
