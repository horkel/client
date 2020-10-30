local user='%{$fg[magenta]%}%n@%{$fg[magenta]%}%m%{$reset_color%}'
local pwd='%{$fg[cyan]%}%~%{$reset_color%}'
local return_code='%(?..%{$fg[red]%}%? %{$reset_color%})'

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}A"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}M"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}D"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}R"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}U"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}?"

git_custom_status() {
    local log=$(git status -sb 2> /dev/null)
    local git_branch=${log[(f)1]:3}
    local line=$(echo $log | wc -l)

    if [ ${#git_branch} -gt 0 ]; then
        if [  ${line} -gt 1 ]; then
            echo "%{$fg[red]%}$git_branch%{$reset_color%}"
        else
            echo "%{$fg[green]%}$git_branch%{$reset_color%}"
        fi
    fi
}

local git_branch='$(git_prompt_status)%{$reset_color%} $(git_custom_status)'

PROMPT="[${user} ${pwd}]$ "
RPROMPT="${return_code} ${git_branch}"
