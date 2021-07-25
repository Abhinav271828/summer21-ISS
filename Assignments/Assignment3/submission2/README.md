# Introduction to Software Systems (CL6.102)
## Summer 2021, IIIT Hyderabad
## Assignment 3, Part B

## Assumptions
* The 'Status' field of `data.csv` is completely ignored.
* If the rule combination of a row is found in `rules.json` _and_ the rule status in `rules.json` is 'Active' (case sensitive), only then the 'Results' field of `results.csv` will be updated according to `rules.json`.
* In all other cases, the 'Results' field of `results.csv` will be 'Inactive'.

## Running
The `rules.py` file contains a function that reads and returns the dictionaries from the `rules.json` file. It is imported into `lookup.py`.  

`lookup.py` is the only file that has to be run. It creates and writes into the `results.csv` file according to the instructions given and the assumptions above.
