base_path=$(pwd | sed s/ptsrc.*/ptsrc/)
ptc_path=$base_path"/lib/pt"
semantic_path=$base_path"/semantic/semantic.def"
file_name=$(echo $1 | sed s/.pt$//)
new_file_ptc=$file_name"PTCOutput.txt"
new_file_stack=$file_name"Stack.txt"
#echo $new_file
ptc_output="$(ptc -o3 -t3 -L $ptc_path $1)"
res=$(echo $ptc_output)
rm -rf "$new_file_ptc"
rm -rf "$new_file_stack"
echo $res > $new_file_ptc
echo i > $new_file_stack
python format.py "$new_file_ptc" "$new_file_stack"
clear all
echo Our Version
echo
ssltrace "ptc -o3 -t3 -L "$ptc_path" "$1"" "$semantic_path" -e
#if ("$2"=="m") then
echo
ssltrace "ptc -o3 -t3 -L "$ptc_path" "$1"" "$semantic_path" -m | egrep '^ *[\.o%]'
echo
#fi
echo
echo Cordys Version
echo
ssltrace "ptc -L /cas/course/cisc458/jt/lib -o3 -t3 "$1"" /cas/course/cisc458/jt/lib/semantic.def -e
#if ("$2"=="m") then
echo
ssltrace "ptc -L /cas/course/cisc458/jt/lib -o3 -t3 "$1"" /cas/course/cisc458/jt/lib/semantic.def -m  | egrep '^ *[\.o%]'
echo
#fi
