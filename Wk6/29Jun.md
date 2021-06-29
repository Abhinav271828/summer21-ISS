# Introduction to Software Systems (CS6.201)
## Summer 2021, IIIT Hyderabad
## 29 June, Tuesday (Lecture 10) – Python 1

Taught by Prof. Abhinav Gupta

## Python
Python is an interpreted, high-level and general-purpose programming language. It is dynamically typed and garbage-collected.

## Variables
Variables do not need to be declared in Python. The first statement involving a variable would be its definition; e.g.,
    
    school = "IIIT"
    count = 0

Lists are enclosed in square brackets and their entries are comma-separated; for instance,
    
    myList = ["yellow", "pink"]

and they can be subscripted using square brackets, as in `myList[0]`, which evaluates to `"yellow"`.

Input can be taken with the `input` command:
    
    house = input("Enter your house: ")

## Conditionals
The normal relational operators `==`, `!=`, etc. can be used, along with the logical operators `and`, `or` and `not`.  
If statements are followed by a colon and the next line must be indented:
    
    if (a > 5) and (a < 7):
        print("Hello")
    elif (a > 7):
        print("Bye")
    else
        print("Ok")

## Loops
There are two kinds of loops: for and while.

While loops have syntax similar to that of if statements:
    
    while (a < 5):
        a++
        print(a)

Loops can be broken out of using the `break` statement.

For loops use the following syntax:
    
    for i in myList:
        print(i)

For iterating over a range of numbers `[a,b)` with step value `c`, the list `range(a,b,c)` can be used. Strings can be used as lists of characters.
