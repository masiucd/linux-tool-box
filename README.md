# Bash With Marcell 😎λ👩🏻‍💻

## Table of Contents

- [About](#about)
- [Change Directory](#change-dir)
- [View files](#cat)
- [Deleting/Creating](#delete-create)
- [Function](#fn)
- [Curl](#curl)

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
  #  to get more information add the -l flag

ls -l
/*
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
*/

ls -a
 /* Can been combined with -l as well */
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

## [Functions in bash](https://devhints.io/bash)

## simple Functions <a name = "fn"> </a>

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
```
