import json

def load_languages(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        return json.load(file)

def generate_insert_queries(languages):
    queries = []
    for language in languages:
        query = f"INSERT INTO LANGUAGES (language_id, language_name) VALUES ({language['id']}, '{language['name']}');"
        queries.append(query)
    return queries

def save_queries_to_file(queries, file_path):
    with open(file_path, 'w', encoding='utf-8') as file:
        for query in queries:
            file.write(query + '\n')

if __name__ == "__main__":
    languages = load_languages('json/languages.json')
    queries = generate_insert_queries(languages)
    save_queries_to_file(queries, 'languages.sql')
