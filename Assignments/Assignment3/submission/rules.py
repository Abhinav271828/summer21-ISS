import json

def getdict(filename):
    """ Opens and parses json file to return list of dictionaries. """
    with open(filename,'r') as f:
        dict = json.load(f)
    return dict
