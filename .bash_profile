for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file



alias ls='ls -G -ah'
alias ll='ls -alh'
alias c='clear'
alias cd2='cd ../../'
alias cd3='cd ../../../'
alias cd4='cd ../../../../'
alias cd5='cd ../../../../../'


alias ctcs='rm -rf tags cscope.* cscope*;
            ag -l --search-binary --ignore-dir Output . > cscope.files;
            cp cscope.files cscope.tag;
            ctags -R --exclude=Output --sort=foldcase --C-kinds=+lpx --C++-kinds=+p --fields=+iaS --extra=+q -L cscope.tag;
            rm -rf sed* cscope.tag;
            cscope -bk -i cscope.files'

