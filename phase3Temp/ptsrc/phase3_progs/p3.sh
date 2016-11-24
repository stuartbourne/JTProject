base_path=$(pwd | sed s/ptsrc.*/ptsrc/)
ptc_path=$base_path"/lib/pt"
semantic_path=$base_path"/semantic/semantic.def"
file_name=$(echo $1 | sed s/.pt$//)
new_file=$file_name"Stack.txt"
#echo $new_file
ptc_output="$(ptc -o3 -t3 -L $ptc_path $1)"
res=$(echo $ptc_output)
rm -rf "$new_file"
echo $res > $new_file
python format.py "$new_file"
clear all
ssltrace "ptc -o3 -t3 -L "$ptc_path" "$1"" "$semantic_path" -e
