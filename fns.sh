greet(){
  echo "hello"
 
}

greeting=$(greet "$1")
echo "greeting variable is $greeting"
