#!/bin/bash 

NC='\033[0m'
G='\033[0;32m'
R='\033[0;31m'
echo "Enter DB Name:"
read DBN
echo "Enter DB UserName:"
read DBU
echo "Enter DB Pass:"
read DBP

clear

echo "wordpress is installing now please wait..."

wget https://wordpress.org/wordpress-6.2.2.tar.gz

tar -xvf wordpress-6.2.2.tar.gz


cp -r wordpress/* ./



sed '23d;26d;29d;$d' wp-config-sample.php > wp-config4.php

sed "23 i define ( \'DB_NAME\', \'$DBN\' );" wp-config4.php > wp-config3.php

sed "26 i define ( \'DB_USER\', \'$DBU\' );" wp-config3.php > wp-config2.php

sed "29 i define ( \'DB_PASSWORD\', \'$DBP\' );" wp-config2.php > wp-config.php

rm wp-config4.php
rm wp-config3.php
rm wp-config2.php

clear 
echo -e "${G}congratulations! wordpress has been installed${NC}"
echo -e "don't ${R}forget${NC} to follow my github channel https://github.com/abouei-alireza/ "

