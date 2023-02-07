#QUESTION1
func1(){
echo $@
if [ -d $1 ]
then 
echo "$1 is a directory"
elif [ -f $1 ]
then 
echo "$1 is a regularfile"
else
echo "It is another type of file"
fi
ls -l $1
}
func1 func1.sh
.............................
file_count(){
echo $1
wc $1
}
file_count func1.sh
 
# QUESTION2
find /-name"myfile.txt"

#Question3
mkdir folder4
cd folder4
touch f_{1..3}
chmod 700 f_1
chmod 700 f_2
chmod 700 f_3



