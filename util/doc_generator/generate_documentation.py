import sqlparse
import os
import re

def parse_sql(sql_script):
  parsed = sqlparse.parse(sql_script)
  tables = []
  for stmt in parsed:
    if stmt.get_type() == 'CREATE':
      tokens = [token for token in stmt.tokens if not token.is_whitespace]
      table_name = next((str(token) for token in tokens if token.ttype is None), None)
      columns = []
      primary_keys = []
      for token in tokens:
        if '(' in str(token) and ')' in str(token):
          columns_block = str(token).strip('()').split(',\n')
          for column in columns_block:
            column_details = column.strip().split()
            column_name = column_details[0]
            column_type = column_details[1] if len(column_details) > 1 else ''
            if(column_details[0] == 'CONSTRAINT' and 'PRIMARY' in column_details):
              for pk in column_details[4].strip('()').split(','):
                primary_keys.append(pk)
              continue
            columns.append({'name': column_name, 'type': column_type})
      if table_name:
        tables.append({'name': table_name, 'columns': columns, 'pk': primary_keys})
  return tables

def parse_foreign_keys(sql_script):
  foreign_keys = []

  # Regular expression for FK details
  fk_pattern = re.compile(
    r"-- Reference: (?P<constraint_name>[\w\"_\s]+) \(table: (?P<table_name>[\w\"_]+)\)\n"
    r"ALTER TABLE (?P<table_ref>[\w\"_]+) ADD CONSTRAINT (?P<constraint_name_ref>[\w\"_\s]+)\n"
    r"\s+FOREIGN KEY \((?P<fk_column>[\w\"_]+)\)\n"
    r"\s+REFERENCES (?P<ref_table>[\w\"_]+) \((?P<ref_column>[\w\"_]+)\);",
    re.MULTILINE,
  )

  matches = fk_pattern.finditer(sql_script)
  for match in matches:
    foreign_keys.append({
      "constraint_name": match.group("constraint_name").strip(),
      "table_name": match.group("table_name").strip().replace('"','',2),
      "fk_column": match.group("fk_column").strip().replace('"','',2),
      "ref_table": match.group("ref_table").strip().replace('"','',2),
      "ref_column": match.group("ref_column").strip().replace('"','',2),
    })

  return foreign_keys

def generate_markdown_documentation(tables, foreign):
  doc = "# Database Documentation\n\n"
  for table in tables:
    doc += f"##{table['name'][2::]}\n\n"
    doc += "| Column Name | Data Type | Properties |\n"
    doc += "|-------------|-----------|------------|\n"
    for column in table['columns']:
      foreign_value = 'Foreign Key' if any(d.get('table_name') == table['name'][10:-1:] for d in foreign) else ''
      value = 'Primary Key<br>Foreign Key' if foreign_value else 'Primary Key'
      doc += f"| {column['name']} | {column['type']} | {value if column['name'] in table['pk'] else ''} |\n"
    doc += "\n"
  return doc

def generate_markdown_for_foreign_keys(foreign_keys):
  doc = "# Foreign Key Documentation\n\n"
  doc += "| Table Name       | FK Column      | Referenced Table   | Referenced Column |\n"
  doc += "|------------------|----------------|--------------------|-------------------|\n"
  for fk in foreign_keys:
    doc += f"| {fk['table_name']} | {fk['fk_column']} | {fk['ref_table']} | {fk['ref_column']} |\n"
  return doc


sql_script = ""
with open(os.path.join('..','data','sql','create_database.sql'), 'r') as file:
  sql_script = "".join(file.readlines()[4::]) 

parsed_main = parse_sql(sql_script)
parsed_foreign = parse_foreign_keys(sql_script)
documentation = generate_markdown_documentation(parsed_main, parsed_foreign)
documentation_foreign_keys = generate_markdown_for_foreign_keys(parsed_foreign)

# Save to MD
with open("database_documentation.md", "w") as file:
    file.write(documentation + '\n' + documentation_foreign_keys)

print("Documentation generated!")


