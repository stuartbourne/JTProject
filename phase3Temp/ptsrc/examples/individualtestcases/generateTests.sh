#!/bin/bash
cd /cas/student/cisc458t/Zdrive/cisc458/ptsrc/examples/individualtestcases/
for filename in *.pt
 do
	basename=$(basename "$filename")
	T="${basename%.*}"
	txt="Test.txt"
	T=$T$txt
	rm -r "$T" 
	echo -e "Input for $basename: \n" > $T
	ssltrace "ptc -o1 -t1 -L /cas/student/cisc458t/Zdrive/cisc458/ptsrc/lib/pt "$filename"" ~/Zdrive/cisc458/ptsrc/parser/scan.def -i >> $T
	echo -e "\n" >> $T
	echo -e "Emitted tokens for $basename: \n" >> $T
	ssltrace "ptc -o1 -t1 -L /cas/student/cisc458t/Zdrive/cisc458/ptsrc/lib/pt "$filename"" ~/Zdrive/cisc458/ptsrc/parser/scan.def -e >> $T 
done

