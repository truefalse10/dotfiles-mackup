# source ~/.iterm2_shell_integration.fish
# source ~/.fish_aliases
# source ~/.fish_variables

# set -x PATH $PATH /Applications/vscode.app/Contents/Resources/app/bin

# enable rbenv (ruby env)
# status --is-interactive; and source (rbenv init -|psub)
# aliases
alias cat="bat"
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias top="sudo htop"
alias curl="http"
alias help="tldr"
alias localhost="lsof -PiTCP -sTCP:LISTEN"
alias servers="localhost | awk '{print(\$1, \$2, \$3, \$9)}' | column -t"
alias gitp="git push origin (git rev-parse --symbolic-full-name --abbrev-ref HEAD)"
alias gitl="git log --oneline"
alias gitst="git status"

# abbreviations
abbr -a gitc git checkout
abbr -a gdiff git diff

# git track remote branch
function track
  git branch --set-upstream-to=origin/$argv $argv
end
