if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
        startx
fi

[[ -f ~/.zshrc ]] && . ~/.zshrc
alias italnotes="cd ~/Desktop/selfstudy/introduction_to_algorithms/mit_course"
alias cheatsheet_edit="nvim ~/Desktop/notes/linux/cheatsheet/cheatsheet.tex"
alias cheatsheet="zathura ~/Desktop/notes/linux/cheatsheet/cheatsheet.pdf"
