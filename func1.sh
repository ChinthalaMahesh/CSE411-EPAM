 #func1(){
#echo " Chinthala Mahesh
 echo $1
#}
#func1  # or func1 $1
# func1  Mahesh 
#........for multiple arguments
#func1(){
#echo $1 $2 $3
#}
#func1 hello chinthala mahesh
# Question: WAP  which perform summation of random arguments also return length of arguments
func1(){
n_arg=$#
echo $n_arg
sum=0
for x in "$@"
do
sum=$((sum+x))
done
echo sum:$sum
avg=$((sum/n_arg))
return $avg

}
func1 30 35 40 45
echo  "last returned value:" "$?"
fun_odd(){

a=$1
if [ $((a%2)) != 0 ]
then
    echo $1 is odd number
else
  echo $1 is not odd
fi
}
fun_odd 60
# calling one func from another 
n_arg=$#
sum=0
one (){
echo " first function"
for x in "$@"
do
sum=$((sum+x))
done
echo sum:$sum
two
}
two (){
avg=$((sum/n_arg))
echo $avg
echo "second function"
}
one 4 6  # we can cal func from commandline also
#Q: WAP to declare func one which return sum of two func arguments, declare another func called func2 which
# fetch sum of 1st func and calculate the average of that 
#WAP to access variable at setvariable which are defined in anotherfile 
