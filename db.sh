#!/bin/bash

# Function to create a database
create_database() {
    echo -n "Enter the name for the new database: "
    read db_name

    # Validate database name
    if [[ ! "$db_name" =~ ^[a-zA-Z_][a-zA-Z0-9_]*$ ]]; then
        echo "Invalid database name. It must start with a letter or underscore and can only contain letters, numbers, and underscores."
        return
    fi

    # Check if the database already exists
    if [ -d "$db_name" ]; then
        echo "Database '$db_name' already exists."
    else
        # Create the database folder and set permissions
        mkdir "$db_name"
        chmod 700 "$db_name"
        # Create a flag file to mark the folder as a valid database
        touch "$db_name/.db_marker"
        echo "Database '$db_name' created successfully."
    fi
}

# Function to list all valid databases
list_databases() {
    echo "Available databases:"
    for db in */; do
        # Only list directories that have the .db_marker file (valid database)
        if [[ -d "$db"  && -f "${db}.db_marker" ]]; then
            echo "- ${db%/}"
        fi
    done
}

# Function to connect to a database
connect_to_database() {
    echo -n "Enter the name of the database to connect to: "
    read db_name

    if [[ -z "$db_name" || ! "$db_name" =~ ^[a-zA-Z_][a-zA-Z0-9_]*$ ]]; then
        echo "Database '$db_name' does not exist."
        return 1
    elif [ -d "$db_name" ]; then
        # Transfer control to table.sh (assuming table.sh is in the same directory)
        echo "Connected to database '$db_name'."
        ./table.sh "$db_name"
        return 0
    fi
}



# Function to delete a database
delete_database() {
    echo -n "Enter the name of the database to delete: "
    read db_name

    if [ -d "$db_name" ]; then
        echo -n "Are you sure you want to delete the database '$db_name'? (y/n): "
        read confirmation
        if [[ "$confirmation" == "y" || "$confirmation" == "Y" ]]; then
            rm -r "$db_name"
            echo "Database '$db_name' deleted successfully."
        else
            echo "Deletion canceled."
        fi
    else
        echo "Database '$db_name' does not exist."
    fi
}

# Main menu
while true; do
    echo -e "\nDatabase Management Options:"
    echo "1. Create Database"
    echo "2. List Databases"
    echo "3. Connect to Database"
    echo "4. Delete Database"
    echo "5. Exit"
    echo -n "Choose an option (1-5): "
    read option

    case $option in
        1)
            create_database
            ;;
        2)
            list_databases
            ;;
        3)
            connect_to_database
            ;;
        4)
            delete_database
            ;;
        5)
            echo "Exiting the program."
            break
            ;;
        *)
            echo "Invalid option. Please choose between 1 and 5."
            ;;
    esac
done
