greet(){
  echo "hello"
 
}

greeting=$(greet "$1")
echo "greeting variable is $greeting"

global_var="I am global"

fn(){
 echo "global = $global_var"
 local local_var= "I am local"
 echo "I am local = $local_var"
}

fn
echo "$global_var"
echo "$local_var"

