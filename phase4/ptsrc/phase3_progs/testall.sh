#!/bin/bash
cd /cas/student/cisc458t/Zdrive/cisc458/phase3/ptsrc/phase3_progs/
for filename in *.pt
do
	y=${filename%.pt}
	./p3.sh $filename > "/outputDir/"$y".txt"
	echo $y
done

