# 1. Let's Echo

echo "HELLO"

# 2. Looping and Skipping

for i in {1..100..2}
do
    echo $i
done

# 3. A Personalized Echo

read name
echo Welcome $name

# 4. Looping with Numbers

for i in {1..50}
do
    echo $i
done

# 5. The World of Numbers

read x
read y
echo $[x + y]
echo $[x - y]
echo $[x * y]
echo $[x / y]

# 6. Comparing Numbers

read x
read y
if [ $x -gt $y ]
then
    echo X is greater than Y 
elif [ $x -lt $y ]
then
    echo X is less than Y
else
    echo X is equal to Y
fi

# 7. Getting started with conditionals

read c
if [ $c == y ] || [ $c == Y ]
then
echo YES
elif [ $c == n ] || [ $c == N ]
then
echo NO
fi

# 8. More on Conditionals

read a
read b
read c

if [ $a -eq $b ] && [ $b -eq $c ]
then
    echo EQUILATERAL
elif [ $a -ne $b ] && [ $b -ne $c ] && [ $a -ne $c ]
then
    echo SCALENE
else
    echo ISOSCELES
fi

# 9. Arithmetic Operations

read exp
printf "%.3f\n" $(echo "scale=4; $exp" | bc)

# 10. Compute the Average

read n
sum=0
for (( i=0; i<n; i++ ))
do
   read x
   sum=$[sum+x]
done

printf "%.3f" $(echo $sum/$n | bc -l)

#11. Functions and Fractals - Recursive Trees - Bash!

read n
n=$((6-$n))
lines=$((2**$n-1))
for ((i=1; i<=lines; i++))
do
    for j in {1..100..1}
    do
        printf "_"
    done
     printf "\n"
done

for ((t=n; t<=5; t++))
do
    p=$((2**($t-1)))
    
    for ((k=1; k<=p; k++))
    do
        for ((i=1; i<=18+p+k-2; i++))
        do
            printf "_"
        done
        
        m=$((2**(5-$t)))
        for ((z=1; z<=m; z++))
        do
            printf "1"

            for ((i=((p*2)-1)-((k-1)*2); i>=1; i--))
            do
                printf "_"
            done

            printf "1"
            
            if (($z < $m))
            then
                for ((i=1; i<=((p*2)-1)+((k-1)*2); i++))
                do
                    printf "_"
                done
            fi
        done
        
        for ((i=1; i<=18+p+k-1; i++))
        do
            printf "_"
        done
        
        
        printf "\n"
    done
    
    for ((k=1; k<=p; k++))
    do
        for ((i=1; i<=18+(p*2)-1; i++))
        do
            printf "_"
        done
        
        m=$((2**(5-$t)))
        for ((z=1; z<=m; z++))
        do
            printf "1"
            
            if (($z < $m))
            then
                for ((i=1; i<=((p*2)-1)+((p-1)*2)+2; i++))
                do
                    printf "_"
                done
            fi     
         done
   
        for ((i=1; i<=18+(p*2); i++))
        do
            printf "_"
        done
        
        printf "\n"
    done
    
done
