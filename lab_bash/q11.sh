for file in $(find . -type f -name "*.c") 
do 
    prog_name=`echo $file | cut -d'/' -f2 | cut -d'.' -f1`
    file_name=`echo $file | cut -d'/' -f2`

    if gcc -o $prog_name $file 2>/dev/null;
    then
        ans=$(./$prog_name 2>/dev/null) 

        if [ "$ans" = 20 ] ;
        then
            printf "%s  10\n" $file_name

        else [ "$ans" != 20 ]
            printf "%s  7\n" $file_name       
        fi
    else
        printf "%s  5\n" $file_name
    fi
done 