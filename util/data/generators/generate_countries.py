import json

def load_countries(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        return json.load(file)

def generate_insert_queries(countries):
    queries = []
    for country in countries:
        query = f"INSERT INTO COUNTRIES (country_id, country_name) VALUES ({country['id']}, '{country['country']}');"
        queries.append(query)
    return queries

def save_queries_to_file(queries, file_path):
    with open(file_path, 'w', encoding='utf-8') as file:
        for query in queries:
            file.write(query + '\n')

if __name__ == "__main__":
    countries = load_countries('json/countries.json')
    queries = generate_insert_queries(countries)
    save_queries_to_file(queries, 'countries.sql')
