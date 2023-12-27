#!/bin/bash


# args : array
function from_array_to_string
{
    array=($@);
    result="[";

    for i in ${!array[@]};
    do
        if [ $i -eq `expr ${#array[@]} - 1` ]; then result="$result '${array[$i]}'";
        else                                        result="$result '${array[$i]}',";
        fi
    done

    echo "$result ]";
}
