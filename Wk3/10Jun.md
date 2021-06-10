# Introduction to Software Systems (CS6.201)
## Summer 2021, IIIT Hyderabad
## 10 June, Thursday (Lecture 6)

Taught by Sai Anirudh Karri

## CSS (Cascading Style Sheets)
CSS helps to separate content and the details of its presentation. It enables one to focus on content during development and easily change the presentation later.  

## Ways to Use CSS
### Inline CSS
    <!DOCTYPE html>
    <html>
        <head>
            <title> My Home Page
            </title>
        </head>
        <body style="color: red;">
            <p>About myself.</p>
        </body>
    </html>

The `style="color: red;"` statement is an argument to the `<body>` tag.  

Code written in this style is hard to maintain and therefore not common.

### Internal CSS
    <style>
        body {
            color: red;
        }
    </style>

The `<style>` tag should always be inside the scope of the `<head>` tag. It will apply to the whole document.  

### External CSS
    <link
        rel="stylesheet"
        href="style.css">

The `style.css` file could contain, for example,
    
    body {
        color: red;
    }

More than one file can be linked in this way.

## Syntax
A CSS statement consists of a _selector_ (like `body`) and one or more _rules_ (like `color: red;`).  
The rule consists of a _property_ (`color`) and a value (`red`).  
    
    Stmt = Selector { Rule }
    Rule = Property: Value; | Rule Rule

Comments can be written enclosed in `/* ... */`.

### Class and ID Selectors
The selector can be either a tag (as above), a class or an ID.  

An example of a class selector is
    
    .heading {
        color: red;
    }

In this case,

    <h1 class="heading">
        Section 1</h1>
would be coloured red.  

Similarly, an example of an ID selector is
    
    #first-p {
        color: red;
    }
    
Now,
    
    <p id="first-p">
        About myself.</p>
would be coloured red.  

The class selector can be applied to many tags, but the ID selector to only one.

The disjunction of two selectors is done using a comma, as in

    h1, h2 {
        color: red;
    }
which applies to all elements with either the tag `<h1>` _or_ the tag `<h2>`.

Their conjunction is by concatenation (tag + class or tag + ID); for example,
    
    p.even { color: red; }
applies to all elements with the tag `p` _and_ the class `even`; and
    
    p#first-p { color: red; }
applies to all elements with the tag `p` _and_ the ID `first-p`.

### Pseudo-Selectors
Pseudo-selectors indicate a special or phantom state of an element that can be targeted, like `:hover`.  
Pseudo-elements are used to style only certain parts of an element, like `::first-character`.  

A complete CSS reference can be found [here](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference).
