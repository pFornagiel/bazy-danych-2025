# Countries file source:
# https://github.com/stefangabos/world_countries
import json
import os
import random

file_path_unmodified = os.path.join("countries_unmodified.json")
file_path_modified = os.path.join("countries.json")

with open(file_path_unmodified, 'r') as file:
    data = json.load(file)

random.shuffle(data)
modified_data = [{"id": 1, "name": "Poland"}]
for i,row in enumerate(data):
  modified_data.append(
    {
      "id": i+2,
      "country": row["name"]
    }
  )

with open(file_path_modified, 'w') as file:
    json.dump(modified_data, file, indent=2)

print("JSON file updated successfully.")
