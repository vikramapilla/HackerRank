# 1. Cut #1

cut -c3 $x

# 2. Cut #2

cut -c2,7 $x

# 3. Cut #3

cut -c2-7 $x

# 4. Cut #4

cut -c-4 $x

# 5. Cut #5

cut -d $'\t' -f-3 $x

# 6. Cut #6

cut -c13- $x

# 7. Cut #7

cut -d' ' -f4 $x

# 8. Cut #8

cut -d' ' -f-3 $x

# 9. Cut #9

cut -d $'\t' -f2- $x

# 10. Head of a Text File #1

head -n 20

# 11. Head of a Text File #2

head -c 20

# 12. Middle of a Text File

head -n 22 | tail -n 11

# 13. Tail of a Text File #1

tail -n 20

# 14. Tail of a Text File #2

tail -c 20

# 15. 'Tr' Command #1

tr '()' '[]'

# 16. 'Tr' Command #2

tr -d [a-z]

# 17. 'Tr' Command #3

tr -s ' '

# 18. Sort Command #1

sort

# 19. Sort Command #2

sort -r

# 20. Sort Command #3

sort -n

# 21. Sort Command #4

sort -n -r

# 22. Sort Command #5

sort -n -t $'\t' -k2 -r

# 23. Sort Command #6

sort -n -t $'\t' -k2

# 24. Sort Command #7

sort -n -r  -t'|' -k2

# 25. 'Uniq' Command #1

uniq

# 26. 'Uniq' Command #2

uniq -c | colrm 1 6

# 27. 'Uniq' Command #3

uniq -c -i | cut -c7-

# 28. 'Uniq' Command #4

uniq -u

# 29. Paste - 3

tr '\n' '\t'

# 30. Paste - 4

paste - - -

# 31. Paste - 1

a=`tr '\n' ';'`
echo "${a::-1}"

# 32. Paste - 2

paste - - - | tr $'\t' ';'