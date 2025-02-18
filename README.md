# **📌 Database and Table Management System Using Bash Script**

## **📜 Project Overview**  
This **Database and Table Management System** is a **Bash script-based solution** designed to efficiently manage databases and their tables. It allows users to create, list, connect to, delete, and manage both databases and tables, including the ability to add, view, delete rows, and ensure data integrity through validation checks.

The system organizes databases as directories and stores table schemas and data in text files. This makes it an ideal solution for lightweight, small-scale database management directly from the terminal. With comprehensive features and a user-friendly command-line interface, it simplifies database and table management while providing data validation, primary key checks, and schema consistency.

## **🔹 Key Features**  
### **Database Management**  
- **Create Database**: Allows users to create new databases by specifying a valid database name.
- **List Databases**: Displays all available databases in the system.
- **Connect to Database**: Users can connect to an existing database to manage its tables, with automatic prompts to create new tables within that database.
- **Delete Database**: Deletes an existing database with confirmation.

### **Table Management** (Appears after connecting to a database)  
- **Create Table**: Create new tables within a database by defining columns, data types, and validating schema.
- **List Tables**: View all tables within a connected database.
- **Drop Table**: Delete a table, with confirmation to prevent accidental loss of data.
- **Insert Row**: Add rows to a table while ensuring data type validation and checking for primary key uniqueness.
- **View Data**: Display all rows in a table, along with the table’s schema (column names and types).
- **Delete Row**: Delete a specific row by its row number from a table.

## **🛠️ System Requirements**  
- **Operating System**: Linux/macOS (or any Bash-supported environment).
- **Bash Scripting**: Basic understanding of Bash scripting to interact with and extend the functionality.

## **📌 Installation and Usage**

### **1️⃣ Clone the Repository**  
Clone the repository to your local machine: 
```bash
git clone https://github.com/Esraa-mohamed1/creating-Database-using-bash-script-
cd creating-Database-using-bash-script
chmod +x table_management.sh  # Grant execute permission to the script
```

### **2️⃣ Run the Script**  
Execute the script by running: 
```bash
./db.sh
```

### **3️⃣ Main Menu Options**  
Upon running the script, you will be presented with the following options: 
1️⃣ **Create Database** – Create a new database by specifying a valid name. 
2️⃣ **List Databases** – Display all available databases. 
3️⃣ **Connect to Database** – Connect to an existing database to manage its tables. When you connect to a database, you will automatically be prompted to create new tables within that database. 
4️⃣ **Delete Database** – Delete an existing database (with confirmation). 
5️⃣ **Exit** – Exit the program.

After connecting to a database, the following table management options will appear: 
1️⃣ **Create Table** – Create a new table in the connected database by defining its columns and types. 
2️⃣ **List Tables** – View all available tables in the connected database. 
3️⃣ **Drop Table** – Delete an existing table (with confirmation). 
4️⃣ **Insert Row** – Insert a new row of data into a table, with data validation. 
5️⃣ **Show Data** – View all data rows in a table. 
6️⃣ **Delete Row** – Delete a specific row from a table by specifying the row number.

## **📂 Project Structure**
```
📦 table-management-bash
 ┣ 📜 table_bash-script.sh    # Main script for database and table management
 ┣ 📜 README.md              # Project documentation
 ┣ 📜 .gitignore             # Excludes unnecessary files
 ┃ 📜 database-bash-script.txt          # Data for the table

