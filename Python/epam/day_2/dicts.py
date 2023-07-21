import json

def drop_empty_items(d):
    """Drop empty items from a dictionary."""
    return {key: value for key, value in d.items() if value}

def main():
    """Drop empty items from a dictionary."""
    data = input("Enter a JSON dictionary: ")
    try:
        dictionary = json.loads(data)
        result = drop_empty_items(dictionary)
        print("Dictionary with empty items dropped:", result)
    except json.JSONDecodeError:
        print("Invalid JSON input. Please enter a valid JSON dictionary.")


if __name__ == "__main__":
    main()