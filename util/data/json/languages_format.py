# Languages file source:
# https://gist.github.com/jrnk/8eb57b065ea0b098d571
import json
import os
import random

file_path_unmodified = os.path.join("languages_unmodified.json")
file_path_modified = os.path.join("languages.json")

with open(file_path_unmodified, 'r') as file:
    data = json.load(file)

random.shuffle(data)
modified_data = [{"id": 1, "name": "Polish"}]
for i,row in enumerate(data):
  modified_data.append(
    {
      "id": i+2,
      "name": row["name"]
    }
  )

with open(file_path_modified, 'w') as file:
    json.dump(modified_data, file, indent=2)

print("JSON file updated successfully.")
