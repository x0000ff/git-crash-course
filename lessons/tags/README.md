# Tags

⚠️ Use `repository.zip`

## Tag current commit

> ``` 
> $ git tag current
> ```

| Before | Command | After |
|---|---|---|
| ![before](img/before.png) | ![current](img/current-cmd.png) | ![after current](img/after-current.png) |

## Tag by reference name

> ``` 
> $ git tag develop-by-name develop
> ```

| Before | Command | After |
|---|---|---|
| ![before](img/before.png) | ![by name](img/by-name-cmd.png) | ![after by name](img/after-by-name.png) |

## Tag by hash

> ``` 
> $ git tag develop-by-hash cf2fd9c
> ```

| Before | Command | After |
|---|---|---|
| ![before](img/before.png) | ![by hash](img/by-hash-cmd.png) | ![after by hash](img/after-by-hash.png) |

## Remove tag

> ``` 
> $ git tag -d develop-by-hash
> ```

| Before | Command | After |
|---|---|---|
| ![before](img/after-by-hash.png) | ![delete](img/delete-cmd.png) | ![after delete](img/before.png) |
