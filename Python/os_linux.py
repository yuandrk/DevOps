import os
import subprocess

command="ps"
commandArgument="-x"
commandTail="tail"
print(f'Gathering active process information with command: {command} {commandArgument} | {commandTail}')
subprocess.run([command,commandArgument,commandTail])