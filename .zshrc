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

# Fall 2023
alias math109="cd ~/Desktop/ucsd/fall_2022/mathematical_reasoning_math109"
alias math100a="cd ~/Desktop/ucsd/fall_2022/abstract_algebra_math100a"
alias math183="cd ~/Desktop/ucsd/fall_2022/statistical_methods_math183"
alias cse8b="cd ~/Desktop/ucsd/fall_2022/intro_programming_cse8b"

# Winter 2023
alias cse21="cd ~/Desktop/ucsd/winter_2023/cse21"
alias cse15l="cd ~/Desktop/ucsd/winter_2023/cse15l"
alias lati10="cd ~/Desktop/ucsd/winter_2023/lati10"
alias cse12="cd ~/Desktop/ucsd/winter_2023/cse12"

alias ucsd="cd ~/Desktop/ucsd/"
alias wb2022="cd ~/Desktop/extracurricular/winter_break_2022"
alias ankicard="nvim ~/Desktop/notes/anki/backbox.tex"

alias cpwd="pwd | xclip -selection c"

PATH="$PATH:/home/javier/.local/bin:/usr/bin/qmake:/home/javier/.local/share/gem/ruby/3.0.0/bin"
export JUNIT_HOME=/home/javier/Desktop/ucsd/winter_2023/cse12/discussion/week1/week1-discussion-files/libs

export CLASSPATH=$CLASSPATH:/home/javier/Desktop/extracurricular/winter_break_2022/algorithms_fourth_ed/exercises/external_library/algs4.jar:/home/javier/Desktop/ucsd/winter_2023/cse12/discussion/week1/week1-discussion-files/libs/hamcrest-core-1.3.jar:/home/javier/Desktop/ucsd/winter_2023/cse12/discussion/week1/week1-discussion-files/libs/junit-4.12.jar
