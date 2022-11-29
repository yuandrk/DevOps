import os
import sys
import subprocess
import datetime

### Check for existing root permission
if os.geteuid() == 0:
    print("We're root!")
else:
    print("We're not root.")
    subprocess.call(['sudo', 'python3', *sys.argv])
    sys.exit()

def sudoers():
   name  = input("What user do you want to add to sudoers ?: ")
   open_file = open(f'/home/yuandrk/DevOps/python_devops/test_text.txt', 'a+')
   now = datetime.datetime.now()
   open_file.write(f"{name} ALL=(ALL)  ALL")
   open_file.write(f" #{now} \n")
   open_file.close()
   return name

sudoers()

user_input = input('Do wanna add to next user (yes/no): ')

if user_input.lower() == 'yes':
   sudoers()
elif user_input.lower() == 'no':
    print('user typed no')
    exit 
else:
    print('Type yes or no')
    






