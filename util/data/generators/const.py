import os
import json

COUNTRIES = []
LANGAUGES = []
file_path_countries = os.path.join("json","countries.json")
file_path_languages = os.path.join("json", "languages.json")

def loadConstants():
  global COUNTRIES, LANGAUGES
  with open(file_path_countries, 'r') as file:
    COUNTRIES = json.load(file)
  with open(file_path_languages, 'r') as file:
    LANGAUGES = json.load(file)

loadConstants()