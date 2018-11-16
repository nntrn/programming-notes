# git notes

.git/info/exclude

https://help.github.com/articles/ignoring-files/#create-a-global-gitignore


# git ignore

You can create your global .gitignore with this magic:

Declare the global `.gitignore`
: `git config --global core.excludesfile ~/.gitignore_global`

Create the `.gitignore_global` file
: `touch .gitignore_global`

Go into edit mode so you can add the unwanted file listing
: vim .gitignore_global

```git
# ignore all .a files
*.a

# but do track lib.a, even though you're ignoring .a files above
!lib.a

# only ignore the TODO file in the current directory, not subdir/TODO
/TODO

# ignore all files in any directory named build
build/

# ignore doc/notes.txt, but not doc/server/arch.txt
doc/*.txt

# ignore all .pdf files in the doc/ directory and any of its subdirectories
doc/**/*.pdf
```

https://help.github.com/articles/removing-files-from-a-repository-s-history/

```git
# Stage our giant file for removal, but leave it on disk
git rm --cached giant_file
```