# Define an array of strings representing the steps in a software development lifecycle
import base64
steps = ["plan", "code", "test", "delivery", "deploy", "monitor"]


for step in steps:
    variable = step
    string = str(variable)
    base64_string = base64.b64encode(string.encode())
    print(base64_string)   
    
