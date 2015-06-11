# EPSTOPDF.SH
#
# Converts all EPS files in a folder to PDF, and then compresses them.
#
# Author:      Zachary Clawson
# Date:        05/12/2014
# Email:       zc227@cornell.edu skimnc@gmail.com
# Affiliation: Cornell University

for file in *.eps
do
    pstopdf $file
done

rm *.eps

for file in *.pdf
do
    ./shrinkpdf.sh $file > temp.pdf
    rm $file
    mv temp.pdf $file
done