import sys

file1_name = sys.argv[1]
file2_name = sys.argv[2]

if 'cordy' in file1_name:
	cordys_file = open(file1_name)
	our_file = open(file2_name)

else:
	cordys_file = open(file2_name)
	our_file = open(file1_name)


cordys_trace = cordys_file.read().split('\n')
our_trace = our_file.read().split('\n')

previous_rules_stack = []

for cordy_idx, cordy_line in enumerate(cordys_trace):
	if cordy_line != our_trace[cordy_idx]:
		if not (('While' in our_trace[cordy_idx] and 'Loop' in cordy_line) or ('PushStringDescriptor' in our_trace[cordy_idx] and 'PushString' in cordy_line)):
			print "files did not match at line " + str(cordy_idx + 1)
			if len(previous_rules_stack) > 0:
				print "\n in rule: " + str(previous_rules_stack[-1][0]) + " line " +str(previous_rules_stack[-1][1] + 1) +  " in the ssl trace\n"
			if len(previous_rules_stack) > 1:
				print "which was called from " + str(previous_rules_stack[-2][0]) + " line " + str(previous_rules_stack[-2][1] + 1) +  " in the ssl trace\n"
			if len(previous_rules_stack) > 2:
				print "which was called from " + str(previous_rules_stack[-3][0]) + " line " + str(previous_rules_stack[-3][1] + 1) +  " in the ssl trace \n"
			break
	else:
		if '@' in cordy_line:
			 previous_rules_stack.append([cordy_line[1:], cordy_idx])
		if ';' in cordy_line and len(previous_rules_stack) > 0:
			previous_rules_stack.pop()


cordys_file.close()
our_file.close()
