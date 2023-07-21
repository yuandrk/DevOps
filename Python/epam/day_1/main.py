from termcolor import colored

def age_category_detector(age):
    if age < 2:
        return "You are a baby."
    elif 2 <= age <= 12:
        return "You are a child."
    elif 13 <= age <= 19:
        return "You are a teenager."
    else:
        return "You are an adult."

def main():
    print(colored("Age category detector", "yellow", attrs=["bold"]))
    try:
        age = int(input("Please enter your age: "))
        print(age_category_detector(age))
    except ValueError:
        print("Invalid input. Please enter a valid age as a number.")

if __name__ == "__main__":
    main()