# helloworld first class notes

annie$ cd eclipse-workspace
eclipse-workspace annie$ ls
```
HelloWorld
```
eclipse-workspace annie$ cd HelloWorld
HelloWorld annie$ ls
```
bin	src
```
HelloWorld annie$ git init
```
Initialized empty Git repository in /Users/annie/eclipse-workspace/HelloWorld/.git/
```
HelloWorld annie$ git remote add origin https://github.com/nntrn/dell-java.git
HelloWorld annie$ git pull origin master
```
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), done.
From https://github.com/nntrn/dell-java
 * branch            master     -> FETCH_HEAD
 * [new branch]      master     -> origin/master
```
HelloWorld annie$ git status
```
On branch master
Untracked files:
  (use "git add <file>..." to include in what will be committed)

	.classpath
	.project
	.settings/
	bin/
	src/

nothing added to commit but untracked files present (use "git add" to track)
```
HelloWorld annie$ git add .
HelloWorld annie$ git status
```
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	new file:   .classpath
	new file:   .project
	new file:   .settings/org.eclipse.jdt.core.prefs
	new file:   bin/main.class
	new file:   src/main.java
```
HelloWorld annie$ git commit -m "initial commit"
```
[master cf7604f] initial commit
 5 files changed, 45 insertions(+)
 create mode 100644 .classpath
 create mode 100644 .project
 create mode 100644 .settings/org.eclipse.jdt.core.prefs
 create mode 100644 bin/main.class
 create mode 100644 src/main.java
```
HelloWorld annie$ git push -u origin master
```
Counting objects: 10, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (8/8), done.
Writing objects: 100% (10/10), 1.90 KiB | 0 bytes/s, done.
Total 10 (delta 0), reused 0 (delta 0)
To https://github.com/nntrn/dell-java.git
   1ced369..cf7604f  master -> master
Branch master set up to track remote branch master from origin.
```