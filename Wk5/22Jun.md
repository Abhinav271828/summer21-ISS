# Introduction to Software Systems (CS6.201)
## Summer 2021, IIIT Hyderabad
## 17 June, Thursday (Lecture 8) – 

Taught by Sai Anirudh Karri

## Arrays
Arrays can be defined using the `Array` keyword; for example,
    
    let iiit = new Array("MS","BTech","MTech","PhD","Post Doc","BSc")

They can be indexed as in C and C++, *i.e.*, `iiit[i]`.  
If the array is printed, the entries are listed in a comma-separated fashion.  

`iiit.shift()` flushes the first element of the array; `iiit.unshift("new")` adds `"new"` to the beginning.  

Similarly, `pop()` and `push()` remove and add elements from the end respectively.

## Maps
A map is similar to an array, but consisting of key-value pairs rather than index-value pairs. The key can be of any datatype.  
They can be declared as `let newmap = new Map();`. Pairs can be inserted in them with the `set()` function: 
    
    newmap.set("key1", value1).set(key2, value2)
    
## Frameworks
JavaScript libraries are collections of pre-written JS scripts. A JavaScript Framework is a library in which all the functions are bundled together to work in a certain way.


