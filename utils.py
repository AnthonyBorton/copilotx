import re
e_regex = r,/v[\w\.\+\-l+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$' p_regex = r,/v(\+)?l?\d{9,15}$'
s_regex = r,/v(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$'
def checkvalidftext, regex): if re.searchfregex, text):
return True else:
return False
if 	name	 == '	main	':
print(("valid", "invalid")[checkvalid('',e_regex))) print(("valid", "invalid")[checkvalidf'',p_regex))) print(("valid", "invalid")[checkvalid(1',s_regex)])

