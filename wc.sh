#!/bin/bash

awk 'BEGIN {
    FS=" ";
}

# Dev
{
    i = 0;
    nbWords = 0;
    letter=0;
    
    while (i < FNR) {
        nbWords += NF;
        letter +=length;
        i++;
    }

}

# End
END {
    getline < "name.txt";

    if ("'$2'" == "-k")
        printf "There are " nbWords " words.\n ";
    else if ("'$2'" == "-s")
        printf "There are "  FNR " lines.\n";
    else if ("'$2'" == "-h")
        printf "There are "  letter " lines.\n";


}' $1
