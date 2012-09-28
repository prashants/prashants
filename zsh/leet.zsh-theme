# Based on evan's prompt
# Shows the exit status of the last command if non-zero
# Uses "#" instead of "»" when running with elevated privileges


PROMPT="%{${fg_bold[red]}%}%n@%m %{${fg[green]}%}%3~%(0?. . ${fg[red]} )%{${fg[blue]}%}»%{${reset_color}%} "

# RPS1="%(?..%{$fg[red]%}%? ↵%{$reset_color%}) %{$fg[red]%}% [%t %D{%d:%m:%y}] %{$reset_color%}"
RPS1="%{$fg[red]%}% [%t %D{%d:%m:%y}] ↵%{$reset_color%}"

