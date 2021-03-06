# Introduction to Software Systems (CS6.201)
## Summer 2021, IIIT Hyderabad
## 03 June, Thursday (Lecture 4) – Bash Programming 2

Taught by Sai Anirudh Karri

## Arrays
Arrays can be declared by listing out the elements, separated by spaces and enclosed in parentheses; for example `("cse" "csd" "ece" "ecd" "cld" "cnd" "chd")`.  

If the array is accessed using `$`, only the first (index 0) entry is printed. In order to print all entries, use the syntax `${list[*]}`. One can index into lists using the syntax `${list[indx]}`. Individual elements in the list can also be altered by using `list[indx]` as an lvalue. Lists have no boundaries; any index can be used.  

Search-and-replace can be run on the contents of an array; for example `${list[*]/find/replace}` will return the edited array. It will _not_ edit the original array; `${list[*]}` is unchanged.  

## Loops
`for` loops follow the syntax
    
    for var in list
    do
        code
    done

In case of a variable range, one can use the syntax `{1..n}`. If one does not want to use consecutive numbers, the `$(seq b step until)` syntax runs the loop with values `b`, `b+step`, and so on till `until`.

`while` loops are similar:
    
    while cond
    do
        code
    done

Just like in if statements, the condition needs to have the `test` command or be enclosed in square brackets.  

## Switch case
Switch case statements have the following syntax:

    case <expr> in
        case_1 ) code1 ;;
        case_2 ) code2 ;;
        ...
        *) default ;;
    esac
