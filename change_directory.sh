#Shell script to change the name of directory of particular pattern 


#!/bin/bash

for file in user=*
do
    mv -i "${file}" "${file/user/u}"
done
