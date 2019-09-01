# Rebase

## Rebase without conflict

⚠️ Use `repository.zip`

> ``` 
> $ git rebase master
> ```

| Before | Command | After |
|---|---|---|
| ![before](img/before.png) | ![rebase](img/rebase-cmd.png) | ![after rebase](img/after-rebase.png) |

# Rebase with conflict

⚠️ Use `repository-with-conflict.zip`

> ``` 
> $ git rebase master
> $ mate 4.txt
> $ git add .
> $ git rebase --continue
> ```

| Before | Command | After |
|---|---|---|
| ![before](img/before-rebase-with-conflict.png) | ![rebase with conflict](img/rebase-with-conflict-cmd.png) | ![after no-ff](img/after-rebase-with-conflict.png) |

| File with conflict | File without conflicts |
|---|---|
| ![file with conflict](img/file-with-conflict.png) | ![file with resolved conflict](img/file-with-resolved-conflict.png)