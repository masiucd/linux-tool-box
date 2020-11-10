# Bash With Marcell 😎λ👩🏻‍💻

## Table of Contents

- [About](#about)
- [Change Directory](#change-dir)
- [View files](#cat)
- [Deleting/Creating](#delete-create)
- [Move/copy](#move-copy)
- [Find file/folder](#find-file-folder)
- [Grep](#grep)
<!-- - [Function](#fn) -->

## About <a name = "about"></a>

This is a simple tutorial on how you can be more comfortable with using bash and be more productive as a developer. Even if you using ZSH or Fish most of this scripts will still work for you. If you using _powershell_ on Windows then sorry that would be another tutorial.

Bash is a powerful tool and has been around since 1989. Bash is available on many different OS ans Mac-os is one of them. It is the default Shell for Linux operative system.
I will write about:

- creating, moving, deleting and copying files 🤟🏻
- finding files and different text patterns 🧘🏻‍♂️
- interacting with your filesystem 🗄
- Language syntax like conditionals and variables 🈚️
- creating and running different scripts ℬ

### Prerequisites

Bash or any other unix shell like [Zsh](https://en.wikipedia.org/wiki/Z_shell) ore [Fish](https://fishshell.com/).

## [Navigate the file system](https://swcarpentry.github.io/shell-novice/02-filedir/index.html)

#### [egghead.io](https://egghead.io/courses/automate-daily-development-tasks-with-bash).

## Change bash's current working directory <a name = "change-dir"></a>

```bash
cd <file path goes here>
# to go up a directory from your current directory
cd ..
```

#### List a directory's contents

```bash
ls
   to get more information add the -l flag

ls -l

this will output -rw-r--r--


what it means is :
permission for you, your group, all number of links (hardlinks & softlinks)

owner user
owner group
file size
last modified time
file name

to see the hidden folders add on the -a flag

the  dash before r means it's a file !


ls -a
 Can been combined with -l as well
ls -la

```

<br/>

## Check content in a file , for example checking your dependencies in package.json <a name = "cat"> </a>

```bash
cat <file name>
# shows it with line numbers
# 1.
# 2.
# ...
cat -n <file name>
```

```bash
  # view the file without dumping it all onto your screen
less <file name>
# Some useful shortcuts in less
#   Shift+g   (jump to end)
#   g         (go back to top)
#   /         (search)
#   q         (quit/close)
```

<br />

## Remove/delete files <a name = "delete-create"> </a>

echo work like _console.log_ in javascript, it will just print the string in your console.

```bash
  echo 'hello'
```

we can simple generate some randomtext in a file like this

```bash
  echo "hello there master" > text.txt
```

now to see what is in the current directory

```zsh
  $ls
  style.css app.js main.rs text.txt
```

bash automatically created a file for us

```bash
  $cat text.txt

  # prints : hello there master
```

to overide the text you simple type same thing with another value like:

```bash
  echo "12345 is some cool number" >  text.txt
```

to concat text value we simply add another > symbol

```bash
  echo "I don't want to overide the text this time" >> text.text
```

create directory with bash we use the _mkdir_

```bash
  $mkdir <directory name>
```

to create some subfoldres that don't exists we can add the _-p_ flag.

```bash
  $mkdir /a/b/c/d
```

will give os the folder structure of

```zsh
  --a
    --b
      --c
        --d
```

to remove a directory we need to use the rm -r (-r) = recursive
Sometimes you will see the **-rf flag** , recursive force.
I highly don't recommend to use it if you don't know what you are doing.

```bash
 $rm -r folder/
 $rm -rf folder/
```

<br />

## move and copy <a name = "move-copy"> </a>

Move comand (mv) comand allows us to move folders/files.

we want to move index.js in folder b

```bash
  # we have in folder a
  index.js style.css

  mv index.js ../b

  ls b
  # index.js ...and some other files

```

to copy a file we use the **cp** comand.
For example cp file.txt src/file.txt
we copy file.txt into src with the same file name.

```bash
  cp README.md src/README.md
```

We can evenly copy everyting in a folder recursively using the -R flag

```bash
  cp -R src/* anotherFolder/
```

</br>

## Find files and folders <a name = "find-file-folder"> </a>

Let's say we have a working folder with diffrent files.
We want to find all the typescript files.

```bash
  ls src
  # app.js app.ts index.js index.ts style.css index.html
```

```bash
  find src/ -name "*.ts"
```

will give us all the typescript files.

We can even add some extra flags for a more specific search

```bash
  find images/ -iname "*.png"
```

will match both PNG and png because the i flag is a case sensitive flag.

You can even find folders through

```bash
find . -type d

.
./src
./helpers

find . -type d -name "icons"
./icons

find src -type d
src
src/middleware
src/config
src/utils
src/models
src/__tests__
src/controllers
src/routes

```

## Grep <a name = "grep"> </a>

Grep works the same as find byt the difference is that is searches by a pattern. Grep is vey powerful and you can configure it with dfferent flags to get different outputs.

```bash
  grep "let" client/*
```

Will print out a lot of let declaration in our client folder.

- client/record.js: let record = xs[0]
- client/record.js: let recordCount = 0
- client/record.js: let decreaseCount = 0
- client/record.js: for (let i = 0; i < xs.length; i++) {
- client/record.js: for (let i = 0; i < xs.length; i++) {
- client/record.js:let list = [10, 5, 20, 20, 4, 5, 2, 25, 1]
- ...and much more

To be more specific we can adn some flags to it.

```bash
  grep --color -n  "let" client/*
```

color will highlight the pattern and -n will give us on what row we can find the our pattern.

<!-- ## [Functions in bash](https://devhints.io/bash) -->

<!-- ## simple Functions <a name = "fn"> </a>

```bash
  get_team(){
    echo "Legia"
  }

  echo "My team is $(get_team)"

  get_name(){
  echo $1
}

  greet=$(get_name "Marcell")

  echo "Hello $greet ""
```

## Making HTTP requests with CURL <a name ="curl"> </a>

##### Curl Post request with no data

```curl
  curl -X POST http://URL//example.com
```

##### Curl Post request with data

```curl
  curl -d "data=example1&data2=example2" http://UTL/example.com
```

##### Curl Post request with data to a Form

```curl
  curl -X POST -F "name=user" -F "password=123456" http://URL/example.com
```

##### Curl Post request with a file

```curl
  curl -X POST -F "image=@/path/example.gif" http://URL/uploadform.cgi
``` -->
