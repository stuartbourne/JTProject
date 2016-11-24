import sys

f = open(sys.argv[1], 'r+')
file_contents = f.read()

parsed_file = ""
in_stack = False


for word in file_contents.split(" "):
	if word == 'Printing':
		in_stack = True
	if in_stack == True:
		parsed_file += word
		parsed_file += ' '
		if word == 'Link: ' or word == 'TypeTblLink' or word == "| Kind:":
			parsed_file += '\n'
 
		if word == 'End':
			in_stack = False
			parsed_file += '\n'

f.close()
open(sys.argv[2], 'w').close()
f = open(sys.argv[2], 'w')
f.write(parsed_file)
f.close()
