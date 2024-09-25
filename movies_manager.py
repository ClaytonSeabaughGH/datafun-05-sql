'''This project creates a database with two tables and imports the data into said tables where it can be queried with SQL'''
# Import from Python Standard Library first
import sqlite3
import pathlib

# Import from external packages
import pandas as pd

#Import logging
import logging

# Configure logging to write to a file, appending new logs to the existing file
logging.basicConfig(filename='log.txt', level=logging.DEBUG, filemode='a', format='%(asctime)s - %(levelname)s - %(message)s')

logging.info("Program started") # add this at the beginning of the main method
logging.info("Program ended")  # add this at the end of the main method

# Create file paths for functions
db_file_path = pathlib.Path("project_movies.db")
sql_file_path = pathlib.Path("movie_sql").joinpath("create_tables.sql")
directors_data_path = pathlib.Path("movie_data").joinpath("top_directors_data.csv")
movies_data_path = pathlib.Path("movie_data").joinpath("top_movies_data.csv")


def verify_and_create_folders(paths):
    """Verify and create folders if they don't exist."""
    for path in paths:
        folder = path.parent
        if not folder.exists():
            print(f"Creating folder: {folder}")
            folder.mkdir(parents=True, exist_ok=True)
        else:
            print(f"Folder already exists: {folder}")

def create_database(db_path):
    """Create a new SQLite database file if it doesn't exist."""
    try:
        conn = sqlite3.connect(db_path)
        conn.close()
        print("Database created successfully.")
    except sqlite3.Error as e:
        print(f"Error creating the database: {e}")

def create_tables(db_path, sql_file_path):
    """Read and execute SQL statements to create tables."""
    try:
        with sqlite3.connect(db_path) as conn:
            with open(sql_file_path, "r") as file:
                sql_script = file.read()
            conn.executescript(sql_script)
            print("Tables created successfully.")
    except sqlite3.Error as e:
        print(f"Error creating tables: {e}")

def insert_data_from_csv(db_path, directors_data_path, movies_data_path):
    """Read data from CSV files and insert the records into their respective tables."""
    try:
        directors_df = pd.read_csv(directors_data_path)
        movies_df = pd.read_csv(movies_data_path)
        with sqlite3.connect(db_path) as conn:
            directors_df.to_sql("directors", conn, if_exists="replace", index=False)
            movies_df.to_sql("movies", conn, if_exists="replace", index=False)
            print("Data inserted successfully.")
    except (sqlite3.Error, pd.errors.EmptyDataError, FileNotFoundError) as e:
        print(f"Error inserting data: {e}")

def main():
    paths_to_verify = [sql_file_path, directors_data_path, movies_data_path]
    verify_and_create_folders(paths_to_verify)   

    create_database(db_file_path)
    create_tables(db_file_path, sql_file_path)
    insert_data_from_csv(db_file_path, directors_data_path, movies_data_path)

if __name__ == "__main__":
    main()