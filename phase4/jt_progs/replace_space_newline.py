import sys

f=open(sys.argv[1], 'r')

file_contents = ""

for line in f.readlines():
	file_contents += line
	file_contents += '\n'

file_contents = file_contents.replace(' ', '\n')

f.close()

f=open(sys.argv[1], 'w+')

f.write(file_contents)

f.close()

