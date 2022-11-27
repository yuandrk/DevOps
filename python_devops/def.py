import random
import string

def my_fun(first, second):
   """ This describe about functions"""
   print(f"first :{first}")
   print(f"seconf: {second}")

my_fun(1, 2)


def get_random_string(length):
    # choose from all lowercase letter
    letters = string.ascii_lowercase
    result_str = ''.join(random.choice(letters) for i in range(length))
    print("Random string of length", length, "is:", result_str)

