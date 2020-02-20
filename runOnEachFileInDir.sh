#Untested/WIP

#The following bash code will pass $file to command where $file will represent every file in /dir

for file in /dir/*
do
  cmd [option] "$file" >> results.out
done
#Example

#el@defiant ~/foo $ touch foo.txt bar.txt baz.txt
#el@defiant ~/foo $ for i in *.txt; do echo "hello $i"; done
#hello bar.txt
#hello baz.txt
#hello foo.txt

#Untested/WIP
