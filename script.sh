# Escriba su código aquí
sed 's/\([0-9][0-9]\)\/\([0-9][0-9]\)\/\([0-9][0-9]\)/20\3-\2-\1/' data.csv > out.1
sed 's/;N/;\N/g' out.1 > out.2
sed 's/,/./g' out.2 > out.3
sed 's/;/,/g' out.3 > out.4
sed -e'/N/d' out.4 > lab-01-juagudelom.csv
rm out*
