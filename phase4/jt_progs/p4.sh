cur_path=$(pwd)"/"
file_name=$(echo $1 | sed s/.pt$//)
new_dir=$file_name"_directory/"
base_path=$(pwd | sed 's/jt_progs/ptsrc/')
ptc_path=$base_path"/lib/pt"
coder_path=$base_path"/coderlinux/coder.def"
new_file_ptc=$file_name"_ptc_output.txt"
new_file_ssl=$file_name"_ssl_output.txt"
new_file_assembly=$file_name"_assembly.s"
cordy_ssl_file=$file_name"_cordy_ssl.txt"


rm -rf "$new_dir"

mkdir "$new_dir"

cp $cur_path$1 $cur_path$new_dir$1

cp replace_semi_newline.py "$new_dir"

cp replace_space_newline.py "$new_dir"

cd "$new_dir"


#create ptc output file
ptc_output="$(ptc -o3 -t3 -L $ptc_path $cur_path$1)"
ptc_res=$(echo $ptc_output)
rm -rf "$new_file_ptc"

echo $ptc_res > $new_file_ptc


python replace_semi_newline.py "$new_file_ptc"


ssl_res=$(ssltrace "ptc -o4 -t4 -L "$ptc_path" "$cur_path$1"" "$coder_path" -i)

echo $ssl_res > $new_file_ssl

python replace_space_newline.py "$new_file_ssl"


ptc -S -L $ptc_path $cur_path$new_dir$1

rm -rf "$cordy_ssl_file"
cordy_ssl_trace=$(ssltrace "ptc -o4 -t4 -L /cas/course/cisc458/jt/lib "$cur_path$1"" /cas/course/cisc458/jt/lib/coder.def -i)
#ssltrace "ptc -o4 -t4 -L /cas/course/cisc458/jt/lib "$cur_path$1"" /cas/course/cisc458/jt/lib/coder.def -e
echo $cordy_ssl_trace > $cordy_ssl_file



python replace_space_newline.py "$cordy_ssl_file"


cp ../automated_comparison.py automated_comparison.py

python automated_comparison.py "$cordy_ssl_file" "$new_file_ssl"

rm replace_semi_newline.py 
rm replace_space_newline.py

ptc -S -L $ptc_path $cur_path$new_dir$1
