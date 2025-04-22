alias g='git'

# git add
alias ga='git add'
alias gaa='git add --all'
alias gai='git add --interactive'
alias gap='git add --patch'
alias gau='git add --update'
alias gav='git add --verbose'

# git commit
# Amend the most recent local commit:
alias gam='git commit --amend -m' # Only change commit message (optionally 'git add' files)
alias gama='git commit --amend -am' # Add all modified files and change commit message
alias gan='git commit --amend --no-edit' # Keep commit message (optionally 'git add' files)
alias gana='git commit --amend --no-edit -a' # Add all modified files, but keep commit message

alias gc='git commit --verbose'
alias gcam='git commit -am'
alias gcame='git commit --allow-empty-message -am ""'
alias gcamg='git commit --gpg-sign -am'
alias gcams='git commit --signoff -am'
alias gcamu='git commit -am "Update"'
alias gcem='git commit --allow-empty -m'
alias gcm='git commit -m'
alias gcmg='git commit --gpg-sign -m'
alias gcms='git commit --signoff -m'

# git add & commit
alias gac='git add -A && git commit'

# git branch
alias gb='git branch'
alias gba='git branch --all'
alias gbd='git branch --delete'
alias gbD='git branch -D'
alias gbls='git branch --list | cat'

# git bisect
alias gbs='git bisect'
alias gbsb='git bisect bad'
alias gbsg='git bisect good'
alias gbsr='git bisect reset'
alias gbss='git bisect start'

# git config
alias gcf='git config'
alias gcfl='git config --list'
alias gcfls='git config --list | cat'

# git clone
alias gcl='git clone --recurse-submodules'

# git checkout
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcobb='git checkout -' # "checkout branch before"

# git cherry-pick
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'

# git diff
alias gd='git diff'
alias gds='git diff --staged'
# Show the diff between latest stash and local working tree:
alias gdst='git diff stash@{0}' # = git stash show -l
# Show the diff between latest stash and HEAD:
alias gdsth='git diff stash@{0} HEAD'
# Show the diff between latest stash and its original parent commit:
alias gdstp='git diff stash@{0}^ stash@{0}' # = git stash show -p

# git fetch
alias gf='git fetch'
alias gfo='git fetch origin'

# git log
# Best default 'git log':
alias gl='glog --name-status'
# Fancy 'git log --graph':
alias glg='glog --graph'
# git graph branch:
alias glgb='git log --graph --all --simplify-by-decoration --date=format:"%d/%m/%y" --pretty=format:"%C(yellow)%h%Creset%x09%C(bold green)%D%Creset%n%C(white)%ad%Creset%x09%C(bold)%s%Creset%n"'
# Fancy 'git log --graph --oneline':
alias glgo='git log --graph --date=format:"%d/%m/%y" --pretty=format:"%C(yellow)%h%Creset   %C(white)%ad%Creset   %C(bold)%s    %C(bold green)%D%Creset%n"'
# Fancy 'git log --graph --stat':
alias glgs='glog --graph --stat'
# Fancy 'git log --oneline':
alias glo='git log --date=format:"%d/%m/%y" --pretty=format:"%C(yellow)%h%Creset   %C(white)%ad%Creset   %C(bold)%s    %C(bold green)%D%Creset"'
# Regular 'git log' in style:
alias glog='git log --date=format:"%A %B %d %Y at %H:%M" --pretty=format:"%C(yellow)%H%Creset%x09%C(bold green)%D%Creset%n%<|(40)%C(white)%ad%x09%an%Creset%n%n    %C(bold)%s%Creset%n%w(0,4,4)%n%-b%n"' # %w(0,4,4): no line-wrap, indent first line 4 chars, subsequent lines also 4 lines
alias glr='glog --reverse --name-status'
alias gls='git ls-files'

# git merge
alias gm='git merge'
alias gmom='git merge origin/$(git_main_branch)'
alias gmum='git merge upstream/$(git_main_branch)'

# git mv
alias gmv='git mv'

# git push
alias gp='git push'
alias gpd='git push --delete'
alias gpdo='git push --delete origin'
alias gpf='git push --force-with-lease'
alias gpt='git push && git push --tags'

# git pull
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gplrs='git pull --recurse-submodules'

# git reset
# `grhard` is intentionally more verbose because `--hard` is unsafe;
# there is no way to recover uncommitted changes.
# In general the `--keep` flag is preferable. It will do exactly the same,
# but abort if a file has uncommitted changes.
# Having to type 'grhard' in full will make us think twice
# about whether we REALLY want to get rid of all dirty files.
alias grs='git reset --mixed' # Keep changes, but unstage them (`--mixed` = default behaviour)
alias grshard='git reset --hard' # Remove changes, including anything uncommitted (Dangerous!)
alias grsk='git reset --keep' # Safer version of `--hard`: reset is aborted if a file is dirty
alias grss='git reset --soft' # Keep changes, and keep them staged

# git rebase
alias grb='git rebase'
alias grbm='git rebase $(git_main_branch)'

# git remote
alias gr='git remote'
alias gra='git remote add'
alias grr='git remote rm'
alias grsu='git remote set-url'
alias grsh='git remote show'
alias grv='git remote -v'

# git reflow
alias grl='git reflog' # Useful to restore lost commits after reset

# git rm
alias grm='git rm'

# git status
alias gs='git status'
alias gsh='git show --date=format:"%A %B %d %Y at %H:%M" --pretty=format:"%C(yellow)%H%Creset%x09%C(bold green)%D%Creset%n%<|(40)%C(white)%ad%x09%an%Creset%n%n    %C(bold)%s%Creset%n%w(0,4,4)%+b%n"'

# git stash
alias gst='git stash'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstls='git stash list | cat'
alias gstp='git stash push'
alias gstpop='git stash pop'
# Show the diff between latest stash and local working tree:
alias gstsl='git stash show -l' # = git diff stash@{0}
# Show the diff between latest stash and its original parent commit:
alias gstsp='git stash show -p' # = git diff stash@{0}^! = git diff stash@{0}^ stash@{0}

# git submodule
alias gsub='git submodule'
alias gsuba='git submodule add'
alias gsubi='git submodule update --init' # Initialize submodules
alias gsubpl='git submodule foreach git pull'
alias gsubs='git submodule status'
alias gsubu='git submodule update --remote --merge' # Update submodules

# git switch
alias gsw='git switch'
alias gswc='git switch -c'

# git tag
alias gt='git tag'
alias gtam='git tag -am' # <- takes message before annotated tag name: e.g. gtam 'Release v1.0.0' v1.0.0
alias gtsm='git tag -sm' # GPG sign an annotated tag
alias gtd='git tag --delete'
alias gtl='git tag --list'
alias gtls='git tag --list | cat'

# git update-index
# Ignore already tracked files:
alias gignore='git update-index --skip-worktree'
alias gunignore='git update-index --no-skip-worktree'
alias gignored='git ls-files -v | grep ^S'

alias gwch='git whatchanged -p --date=format:"%A %B %d %Y at %H:%M" --pretty=format:"%n%n%C(yellow)%H%Creset%x09%C(bold green)%D%Creset%n%<|(40)%C(white)%ad%x09%an%Creset%n%n    %C(bold)%s%Creset%n%w(0,4,4)%+b%n"'

#  
# Functions
# 

# Check if main exists and use instead of master:
function git_main_branch() {
  if [[ -n "$(git branch --list main)" ]]; then
  # -n: True if length of string output is non-zero
    echo main
  else
    echo master
  fi
}
