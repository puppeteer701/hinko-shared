#!/bin/bash

: <<'DESCRIPTION'
Update git repository
DESCRIPTION

echo 'Starting to update the repo'
if [[ -z "$1" ]] ; then
  echo "We are going to update shared repository"
  GIT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
else
  GIT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )/"$1
fi

git --git-dir=$GIT_PATH"/.git" pull

echo 'Update ended'

# Exit code 0        Success
# Exit code 1        General errors, Miscellaneous errors, such as "divide by zero" and other impermissible operations
# Exit code 2        Misuse of shell builtins (according to Bash documentation)
exit 0