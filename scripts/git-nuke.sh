#!/bin/bash
# https://gist.github.com/stefansundin/f386d3d2a0e1aa6e5c5a

set -o errexit

# BE VERY CAREFUL USING THIS SCRIPT. MAKE A BACKUP (OR TWO) FIRST WITH:
# git clone --mirror ...

# Install by putting this file in e.g. /usr/local/bin/git-nuke
# chmod +x /usr/local/bin/git-nuke

if [ $# -eq 0 ]; then
  echo "Usage: git nuke path1 path2"
  exit 0
fi

# make sure we're at the root of git repo
if [ ! -d .git ]; then
  echo "Error: must run this script from the root of a git repository"
  exit 1
fi

# remove paths from all branches and tags
for i in "$@"; do
  echo "Removing: $i"
  git filter-branch --index-filter "git rm -rf --cached --ignore-unmatch '$i'" --tag-name-filter cat -- --all
done

# remove old reflogs
echo
echo "Cleaning up"
rm -rf .git/refs/original/ && git reflog expire --all && git gc --aggressive --prune

echo
echo "You may want to force-push with:"
echo "git push --all --force"
