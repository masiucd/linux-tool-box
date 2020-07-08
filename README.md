# Bash With Marcell 😎λ👩🏻‍💻

This is a simple tutorial on how you can be more comfortable with using bash and be more productive as a developer. Even if you using ZSH or Fish most of this scripts will still work for you. If you using *powershell* on Windows then sorry that would be another tutorial.

---

Bash is a powerful tool and has been around since 1989. Bash is available on many different OS ans Mac-os is one of them. It is the default Shell for Linux operative system.
I will write about:

* creating, moving, deleting and copying files 🤟🏻
* finding files and different text patterns 🧘🏻‍♂️
* interacting with your filesystem 🗄
* Language syntax like conditionals and variables 🈚️
* creating and running different scripts ℬ

## [Navigate the file system](https://swcarpentry.github.io/shell-novice/02-filedir/index.html)

#### [egghead.io](https://egghead.io/courses/automate-daily-development-tasks-with-bash).

#### Change bash's current working directory

``` bash
cd <file path goes here>
# to go up a directory from your current directory
cd ..
```

#### List a directory's contents

``` bash
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
*/

ls -a
 /* Can been combined with -l as well */
ls -la

```

#### Check content in a file , for example checking your dependencies in package.json

``` bash
cat <file name>
# shows it with line numbers
# 1.
# 2.
# ...
cat -n <file name>
```

#### View a file without showing all of the content

``` bash
  # view the file without dumping it all onto your screen
less <file name>
# Some useful shortcuts in less
#   Shift+g   (jump to end)
#   g         (go back to top)
#   /         (search)
#   q         (quit/close)
```

#### Open directory

``` bash
  # Open in current directory
  open .

  # Open directory
  open <directory>
```

#### Move a file and change name

``` bash
  mv <file/directory> <destination>

  # For example move a js file to a directory at the same level
  mv foo.js ./scripts

  # For example change a js file name fromm foo to bar
  mv foo.js bar.js

  # Move all images that end at png to a new folder

  mv *.png ./images
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

### Making HTTP requests with CURL

##### Curl Post request with no data

``` curl
  curl -X POST http://URL//example.com
```

##### Curl Post request with data

``` curl
  curl -d "data=example1&data2=example2" http://UTL/example.com
```

##### Curl Post request with data to a Form

``` curl
  curl -X POST -F "name=user" -F "password=123456" http://URL/example.com
```

##### Curl Post request with a file

``` curl
  curl -X POST -F "image=@/path/example.gif" http://URL/uploadform.cgi
```
