# bash make you productive

This is a simple tutorial on how you can be more comfortable with using bash and be more productive as a developer

---

Bash is a powerful tool and has been around since 1989. Bash is available on many different OS ans Mac-os is one of them. It is the default Shell for Linux operative system.
I will write about:

* creating, moving, deleting and copying files
* finding files and different text patterns
* interacting with your filesystem
* Language syntax like conditionals and variables
* creating and running different scripts

## [Navigate the file system](https://swcarpentry.github.io/shell-novice/02-filedir/index.html)

#### Change bash's current working directory

``` bash
cd <file path goes here>
# to go up a directory from your current directory
cd ..
```

#### Print single string in terminal

``` bash
  NAME="Marcell"
  echo "Hello $NAME!"
```

#### Variables

``` bash
  TEAM="Legia Warszawa"
  echo "My team is $TEAM!"
```

## [Functions in bash](https://devhints.io/bash)

#### simple Functions

``` bash
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
