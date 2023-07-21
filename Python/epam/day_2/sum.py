def sum_of_digits(n):
    """Sum of number digits."""
    total = 0
    for digit in n:
        if digit.isdigit():
            total += int(digit)
    return total

def main():
    """Sum of number digits."""
    n = input("Enter a number: ")
    print(f"Sum of digits: {sum_of_digits(n)}")

main()

if __name__ == "__main__":
    main()