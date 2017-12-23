# Git

## General Workflow

create local branch to track a remote branch that already exists

`git checkout -b <branch-name> --track origin/<branch-name>`

create a local branch

`git checkout -b <branch-name>`

create a remote branch and track the local branch

`git push --set-upstream origin <branch-name>`

pull in the contents of a remote branch to local branch

`git pull origin <branch-name>`

create a new local branch to track existing remote branch

`git checkout -b <branch-name> remotes/origin/<branch-name>`

delete a local branch

`git branch -d <branch-name>`

delete remote branch

`git push -d origin <branch-name>`

Clean out all changes including untracked changes

`git clean -n` (will only show you the files that will be deleted)

`git clean -f` (will delete all files and directories not tracked)

Clean only tracked changes

`git reset --hard`

## Utilities

`git diff <tag1> <tag2>`

`git log tag1..tag2`

Only the file names with differences

`git diff <tag1> <tag2> --stat`

diff of a particular file

`git diff <tag1> <tag2> -- some/file/name`

delete tags

`git tag --delete <tagname>`

`git push --delete origin <tagname>`

## Troubleshooting

setup to not verify ssl certs

`git config --global http.sslVerify false`