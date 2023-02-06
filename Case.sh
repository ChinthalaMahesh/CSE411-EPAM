## shell program to remove a file if pattern matches with yes if no then print no deletion otherwise print default 
## condition, read file as command line argument.
echo "you want to remove file $1?"
echo "please write yes or no"
read ans
echo $ans
case $ans in
"yes") rm $1
echo "file removed"
;;
"no") echo "file not removed"
;;
*) echo "not understand your request"
esac

