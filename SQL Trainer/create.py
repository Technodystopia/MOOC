import os

script_directory = os.path.dirname(os.path.abspath(__file__))

for i in range(1, 101):
    filename = f"{i:03}.sql"
    filepath = os.path.join(script_directory, filename)
    with open(filepath, 'w'):
        pass

print("100 SQL files have been created in the script directory.")
