# Merge

## Fast-Forward Merge

⚠️ Use `repository.zip`

> ``` 
> $ git merge develop
> ```

| Before | Command | After |
|---|---|---|
| ![before](img/before.png) | ![ff](img/ff-cmd.png) | ![after ff](img/after-ff.png) |

## Non Fast-Forward Merge

⚠️ Use `repository.zip`

> ``` 
> $ git merge --no-ff develop
> ```

| Before | Command | After |
|---|---|---|
| ![before](img/before.png) | ![no-ff](img/no-ff-cmd.png) | ![after no-ff](img/after-no-ff.png) |

## Squash Merge

⚠️ Use `repository.zip`

> ``` 
> $ git merge --squash develop
> $ git commit
> ```

| Before | Command | After |
|---|---|---|
| ![before](img/before.png) | ![no-ff](img/squash-cmd.png) | ![after squash](img/after-squash.png) |

## Merge with Conflict

⚠️ Use `repository-with-conflict.zip`

> ``` 
> $ git merge develop
> $ mate 5.txt
> $ git add .
> $ git commit
> ```

| Before | Command | After |
|---|---|---|
| ![before](img/before-conflict.png) | ![conflict](img/conflict-cmd.png) | ![after conflict](img/after-conflict.png) |
