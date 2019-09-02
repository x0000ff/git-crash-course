# Git Cheet Sheet

> Commands marked with ⚠️ could cause undone actions 

## Essentials

- Initialize a repository in current folder

	```terminal
	$ git init
	```
	
- Add file to staging area. (For revert see `reset`

	```terminal
	$ git add <FILENAME>
	```
	
- See status of files in folder and staging area

	```terminal
	$ git status
	``` 
	
- ⚠️ Remove file from staging area

	```terminal
	$ git reset -- <FILENAME>
	```
	
- See log 
	
	```terminal
	$ git log
	```

- Create a commit 

	```terminal
	$ git commit
	```
	
- Create commit with message `New feature`

	```terminal
	$ git commit -m "New feature"
	```
	
- Add all files to staging and create commit with message `New feature`

	```terminal
	$ git commit -am "New feature"
	```
	
- Create a commit with all the changes from another commit
	
	```terminal
	$ git cherry-pick b5e21ee
	$ git cherry-pick tag-name
	```
 
## Branches

- Create new branch

	```terminal
	$ git checkout -b <BRANCH>
	```
	
- Change branch from current to <ANOTHER_BRANCH>

	```terminal
	$ git checkout <ANOTHER_BRANCH>
	```
	
- Merge branch `develop` unto current branch

	```terminal
	$ git merge develop
	```

## Alterate history

- Add files from staging area to last commit

	```terminal
	$ git commit --amend
	```
	
- Add files from staging area to last commit and skip changing commit message

	```terminal
	$ git commit --amend --no-edit
	```

- Undo last commit but save all the changes in staging area

	```terminal
	$ git reset --soft head~1
	```
	
- Undo last **3** commits but save all the changes in staging area

	```terminal
	$ git reset --soft head~3
	```
	
- Undo last **2** commits and clear all the changes

	```terminal
	$ git reset --hard head~2
	```
	
	Actually this command resets `HEAD` of current branch to mentioned commit. `head~2` means second commit from the end:  
	`...` ⇦ `head~3` ⇦ **`head~2`** ⇦ `head~1` ⇦ `head`
	
	If you want change head of your current branch to head of `master`:  
	
	```terminal
	$ git reset --hard master
	```
	
	So, current branch and `master` will point to the same commit
		
## Tags

- Add new tag with name `release`

	```terminal
	$ git tag release
	```
	
- See tags list

	```terminal
	$ git tag -l
	```
	
- Remove tag with name `release` 

	```terminal
	$ git tag -d release
	```
	
## Remotes

- See list of added remotes

	```terminal
	$ git remote -v
	```

- Add new remote

	```terminal
	$ git remote add johny git@github.com:johny/great-app.git 
	```

- Fetch all changes from all remotes

	```terminal
	$ git fetch --all
	```
	
## Aliases

- See list of aliases

	```terminal
	$ git config --global -l
	```

- Add alias `co` for command `checkout`

	```terminal
	$ git config --global alias.co checkout
	
	```
	
- Add alias `unstage`

	```terminal
	$ git config --global alias.unstage 'reset HEAD --'	
	```

- Add alias `oops` for amend last command

	```terminal
	$ git config --global alias.oops commit --amend --no-edit
	```

## Additional

- ⚠️ Remove all not committed changes
	
	```terminal
	$ git reset --hard
	$ git clean -fd
	```
	
- Clone remote repository

	```terminal
	$ git clone https://github.com/me/great-app.git
	```
- See log of changes in local repository
	
	```terminal
	$ git reflog
	```

## My `.gitconfig`

```
[core]
	editor = mate -w
[user]
	name = Konstantin Portnov
	email = konstantin.portnov@mercadolibre.cl
[color]
	ui = true
[alias]
  p = push
  c = commit
  cm = commit -m
  cp = cherry-pick
  co = checkout
  b = branch
  s = status
  r = rebase
  ri = rebase -i
  rv = remote -v
  fa = fetch --all
  lol = log --pretty=oneline
  oops = commit --amend --no-edit
[credential]
	helper = osxkeychain
``` 


## 🚧 Work in progress

- `rebase`
- `rebase --interactive`
- `stash`
- `merge --no-ff`
- `push`
- `push -f`

# ⏰ To be continued...
