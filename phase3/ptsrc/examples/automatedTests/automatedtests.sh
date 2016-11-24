#!/bin/bash
cd /cas/student/cisc458t/Zdrive/cisc458/phase2/ptsrc/examples/automatedTests 
for filename in *.pt
 do
	basename=$(basename "$filename")
	T="${basename%.*}"
	txt="Test.txt"
	T=$T$txt
	rm -r "$T" 
	echo -e "File being executed: \n\n" >$T

	cat $basename > $T

	echo -e "\n\n" >> $T

	echo -e "Emitted tokens for $basename: \n" > $T
	ssltrace "ptc -o2 -t2 -L /cas/student/cisc458t/Zdrive/cisc458/phase2/ptsrc/lib/pt "$filename"" ~/Zdrive/cisc458/phase2/ptsrc/parser/parser.def -e >> $T
	echo -e "\n" >> $T
done
