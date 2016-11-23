#!/bin/bash

awk 'BEGIN {
    FS=" ";
}

# Dev
{
    i = 0;
    nbWords = 0;
    while (i < FNR) {
        nbWords += NF;
        i++;
    }

    for (word = 1; word <= NF; word++) {
        dic[$word]++;
    }

}

# End printf "There are " nbWords " words and " FNR " lines.\n" ;
END {
    getline < "name.txt";

    if ("'$2'" == "-k")
        printf "There are " nbWords " words.\n ";
    else if ("'$2'" == "-s")
        printf "There are "  FNR " lines.\n";
    else if ("'$2'" == "-h")
        printf "\n";


}' $1
