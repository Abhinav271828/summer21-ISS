# Introduction to Software Systems (CS6.201)
## Summer 2021, IIIT Hyderabad
## 06 July, Tuesday (Lecture 12) – Python 3

Taught by Abhinav Gupta

## Functions and Methods
Functions are defined using the `def` keyword.
    
    def helloWorld():
        print("Hello World")

The type signature need not be given, since Python is dynamically typed. The return value is specified with the keyword `return` and parameters are put between brackets in the definition:
    
    def grade(marks):
        if marks > 90:
            return 'A'
        elif marks > 80
            return 'B'
        else
            return 'C'

The formal parameter `marks` is a local variable and cannot be used outside the definition of `grade()`.

## File Manipulation
### Opening and Closing
A file can be opened using the `open()` function; for instance,
    
    f = open(<path>, 'r')

The second argument is the mode to open it in – read, write or binary. Then, we can use the `read()` method to read the entire file and store it in a string.
    
    contents = f.read()

Note that the file should be closed after reading it, using `f.close()`.

One can avoid the need to close the file manually using `with` syntax:
    
    with open(<path>,'r') as f:
        contents = f.read()
    print(contents)

### File Processing
One useful function is `strip()`, which removes trailing and leading characters (spaces by default). `split()` is also commonly used to parse text separated by delimiters.  

csv files can be parsed using the `reader()` function in the `csv` module. This allows commas to be present in the values (enclosed in quotes). For example,
    
    f = open(<path>, 'r')
    row = csv.reader(f)
    for line in row:
        <code>
        
