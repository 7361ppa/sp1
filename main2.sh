asm="y"
echo "File search program"
echo "With this program you can search files and get information about them"
echo -en '\n'
echo "Dev: Polina Pukhova"
while test $ans="y"
do
echo -en '\n'
echo "Enter file name"
read fil
if test -f $fil
then
echo -n "Name: " && stat --format='%n' $fil
echo -n "Type: " && stat --format='%F' $fil
echo -n "Size: " && stat --format='%s' $fil
echo -n "Owner: " && stat --format='%U' $fil
echo -n "Access rights: " && ls -l $fil
echo -n "Date: " && stat --format='%w' $fil
else
echo "Not file" >&2
fi
echo -en '\n'
read -p "Continue y/n? " -n 1 -r
echo "(optional) move to a new line"
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi
done
