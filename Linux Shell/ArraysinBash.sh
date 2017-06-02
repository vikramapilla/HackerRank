# 1. Read in an Array

i=0
while read n[$i]
do
    i=$(($i+1))
done

echo ${n[@]}

# 2. Slice an Array

i=0
while read a[$i]
do
    i=$(($i+1))
done

echo ${a[@]:3:5}

# 3. Filter an Array with Patterns

i=0
while read a[$i]
do
    i=$(($i+1))
done

echo ${a[@]/*[a|A]*/}

# 4. Concatenate an array with itself

i=0
while read a[$i]
do
    i=$(($i+1))
done

con=("${a[@]}" "${a[@]}" "${a[@]}")
echo ${con[@]}

# 5. Display an element of an array

i=0
while read a[$i]
do
    i=$(($i+1))
done

echo ${a[3]}

# 6. Count the number of elements in an Array

i=0
while read a[$i]
do
    i=$(($i+1))
done

echo $i

# 7. Remove the First Capital Letter from Each Element

i=0
while read a[$i]
do
    i=$(($i+1))
done

echo ${a[@]/[A-Z]/.}

# 8. Lonely Integer - Bash!

read n
read -r n
a=$(echo $n|tr ' ' '\n')
echo "$a" | sort | uniq -u
