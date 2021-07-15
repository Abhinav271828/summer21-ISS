import csv
from rules import *

def matches(fields, row):
    """
    Returns true if the csv row
    matches the dict field.
    """
    if (list(fields.values()) == row[1:4]):     # Compare fields with row values
        return True
    else:
        return False

def getresults():
    """
    Read from data.csv and rules.json files
    and writes to results.csv file.
    """
    results = open("results.csv",'w')       # Open results file in write mode
    
    data = open("data.csv",'r')             # Open data file in read mode
    
    rules = getdict("rules.json")           # Parses json and returns a list of dictionaries
    
    reader = csv.reader(data)
    writer = csv.writer(results)
    writer.writerow(['Email','Profession','Travel','Symptomatic','Chronic','Results'])  # Write column headers
    
    next(reader)                            # Pass column headers
    for row in reader:
        res = [person['results'] for person in rules if matches(person['fields'],row)][0]
                                            # Get the result of the person whose data matches (assumes there is one)
        row.append(res)
        writer.writerow(row)                # Write row along with result to results.csv
    
    results.close()
    data.close()                            # Close files
        
getresults()
