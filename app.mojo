from python import Python

fn quote() -> String:
    return "The quick brown fox jumps over the lazy dog."

fn joke() raises:
    let time = Python.import_module("time")
    print("Why did the chicken cross the road?")
    var x = time.sleep(1)
    print_no_newline(".")
    x = time.sleep(1)
    print_no_newline(".")
    x = time.sleep(1)
    print(".")
    print("To get to the other side!")

fn poem() -> String:
    return """
    Roses are red
    Violets are blue
    I'm a Mojo program
    How about you?
    """

fn main() raises:
    # Import input from Python
    let py = Python.import_module("builtins")

    print("""
Hi, I'm a Mojo Program
What would you like to do?
1) Hear a quote
2) Hear a joke
3) Hear a poem
q) Quit
    """)
   
    var choice: PythonObject = ""

    while choice != "q":
        choice = py.input("Enter your choice: ")
        if choice == "1":
            print("Here's a quote:")
            print(quote())
        elif choice == "2":
            print("Here's a joke:")
            joke()
        elif choice == "3":
            print("Here's a poem:")
            print(poem())
        elif choice == "q":
            print("Goodbye!")
            return
        else:
            print("I don't know how to do that.")
            
