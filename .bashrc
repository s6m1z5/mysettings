# show git branch name
# reference : https://www.mfitzp.com/article/add-git-branch-name-to-terminal-prompt-mac/
function parse_git_branch { 
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
} 

# prompt setting
export PS1="\n\w \$(parse_git_branch)　\n\\$ "