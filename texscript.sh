for line in `cat grep-tex-files.txt`; 
    do sudo tlmgr install "$line";
done
