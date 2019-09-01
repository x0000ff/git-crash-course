# Vim and Git

When you run a Git command which needs additional text arguments, Git will open it's text editor. By default it's [`Vim`](https://www.vim.org)

⚠️ Are you a `Vim` user? Do you know hpw to use it?

If you aren't, I suggest to change your Git editor to 

- [`TextMate`](https://macromates.com/)
- [`Sublime`](https://www.sublimetext.com)
- [`Atom`](https://atom.io)
- [`Visual Studio Code`](https://code.visualstudio.com/) or any other editor you prefer.

## How to change Git text editor?

I found great explanation here: [Associating text editors with Git](https://help.github.com/en/articles/associating-text-editors-with-git)

And copy `Mac` steps here:

	
### Using TextMate as your editor

You can set your default editor in Git to use Textmate if you have installed the mate command.

1. [Install TextMate](https://macromates.com/).

2. Add install CLI alias `mate`

	![](resources/install-mate.gif)

3. Open Terminal.

4. Type this command:

	```terminal
	$ git config --global core.editor "mate -w"
	```
	
### Using Atom as your editor

You can set your default editor in Git to use Atom if you have [installed the editor](https://atom.io/).

1. Install Atom.

2. Open Terminal.

3. Type this command:
	
	```terminal
	$ git config --global core.editor "atom --wait"
	```

### Using Sublime Text as your editor

You can set your default editor in Git to use Sublime Text 3.

1. [Install Sublime Text](http://docs.sublimetext.info/en/latest/getting_started/install.html).

2. Open Terminal.

3. Type this command:

	```terminal
	$ git config --global core.editor "subl -n -w"
	```
	
## `Vim` crash course 💪

### How to type a text?

- Press `i`. It changes current mode to `INSERT`
- Now you can edit the text as in any other text editor.

### How to quit `vim` without saving ?

- Press `ESC`
- Type `:q!`
- Press `ENTER`

### How to save change and quit `vim`?

- Press `ESC`
- Type `:wq`
- Press `ENTER`

