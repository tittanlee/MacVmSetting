for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file


# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"

export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_SDK="/Users/tittanlee/Library/Android/sdk"
export ANDROID_SDK_TOOLS="/Users/tittanlee/Library/Android/sdk/platform-tools"

export PATH=$JAVA_HOME/bin:$ANDROID_SDK:$ANDROID_SDK_TOOLS:$PATH


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



alias dobee01='ssh 570bc20389f5cf6e75000066@funnyplus-zerozero7.rhcloud.com'
alias dobee_python='ssh 572d450f89f5cfa31a00008b@python-zerozero7.rhcloud.com'
