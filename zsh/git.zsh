# https://gist.github.com/joshdick/4415470
# Modify the colors and symbols in these variables as desired.

setopt prompt_subst

GIT_PROMPT_PREFIX="%F{10}[%F{reset}"
GIT_PROMPT_SUFFIX="%F{10}]%F{reset}"
GIT_PROMPT_AHEAD="%F{9}ANUM%F{reset}"
GIT_PROMPT_BEHIND="%F{14}BNUM%F{reset}"
GIT_PROMPT_MERGING="%F{13}⚡︎%F{reset}"
GIT_PROMPT_UNTRACKED="%F{9}●%F{reset}"
GIT_PROMPT_MODIFIED="%F{11}●%F{reset}"
GIT_PROMPT_STAGED="%F{10}●%F{reset}"

parse_git_repo() {
  (basename "$(git rev-parse --show-toplevel)") 2> /dev/null
}

# Show Git branch/tag, or name-rev if on detached head
parse_git_branch() {
  (git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD) 2> /dev/null
}

# Show different symbols as appropriate for various Git repository states
parse_git_state() {
  # Compose this value via multiple conditional appends.
  local GIT_STATE=""

  local NUM_AHEAD="$(git log --oneline @{u}.. 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_AHEAD" -gt 0 ]; then
    GIT_STATE=$GIT_STATE${GIT_PROMPT_AHEAD//NUM/$NUM_AHEAD}
  fi

  local NUM_BEHIND="$(git log --oneline ..@{u} 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_BEHIND" -gt 0 ]; then
    GIT_STATE=$GIT_STATE${GIT_PROMPT_BEHIND//NUM/$NUM_BEHIND}
  fi

  local GIT_DIR="$(git rev-parse --git-dir 2> /dev/null)"
  if [ -n $GIT_DIR ] && test -r $GIT_DIR/MERGE_HEAD; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_MERGING
  fi

  if [[ -n $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_UNTRACKED
  fi

  if ! git diff --quiet 2> /dev/null; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_MODIFIED
  fi

  if ! git diff --cached --quiet 2> /dev/null; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_STAGED
  fi

  if [[ -n $GIT_STATE ]]; then
    echo "$GIT_PROMPT_PREFIX$GIT_STATE$GIT_PROMPT_SUFFIX"
  fi
}

# If inside a Git repository, print its branch and state
git_prompt_string() {
  local git_repo="$(parse_git_repo)"
  local git_branch="$(parse_git_branch)"
  [ -n "$git_repo" ] && echo "$(parse_git_state)$GIT_PROMPT_PREFIX%F{14}$git_repo/${git_branch#(refs/heads/|tags/)}$GIT_PROMPT_SUFFIX"
}

## Aliases

# Show a formatted commit tree
alias gtree="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

# Show unmodified tracked files
alias gunm='echo -e "$(git ls-files --modified)\n$(git ls-files)" | sort | uniq -u'
