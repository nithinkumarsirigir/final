#!/bin/bash

echo -e "Hi, please type the UsernameOfserver: \c "
read  Userofservername



user="UsernameOfserver"



az lab vm create  --lab-name snpLab --name myvmsuse --resource-group snpLabRG001222 --admin-username="$user"  --image "openSUSE Leap 42.2" --image-type gallery --size "Standard_DS1_v2"
