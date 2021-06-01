# Introduction to Software Systems (CS6.201)
## Summer 2021, IIIT Hyderabad
## 27 May, Thursday (Lecture 2)

Taught by Sai Anirudh Karri

## History of the Shell
Charles' Babbage's computers had to be given input using punched cards. Later, during WWII, IBM and Bell Labs made a computer called a mainframe, and created a software to take input and return output, called the shell.  

## Components of a Computer
Various hardware components include I/O devices, system buses, controllers, ALUs, etc.  
Software is a set of programs and their documention. They may be written in HLLs or in assembly.  

Programming languages have specific syntax and semantics that determine it. They may be compiled or interpreted. In terms of usage, they may be used in application or system software.

The operating system is a set os softwares that manage computer hardware resources and serve other programs.

Memory is the component of the computer capable of storing information temporarily (RAM) or permanently (ROM).  
A progam called the bootstrapper is present in the ROM, which loads the OS from the disk into the RAM when the computer is started.  

## The Shell
The shell is a program (a command-line interpreter) that allows the user to interact with the Unix/Linux system. The commands' names are standardised by the American National Standards Institute (ANSI).  

There are some values stored by the operating system, called environmental variables, to specify various configurations or settings related to the computer and to the shell (the home directory, the present working directory, the shell, the user, etc.). The `env` command prints a list of the environmental variables.


