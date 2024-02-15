# ToDo List Database

This repository contains the SQL scripts and structure for a ToDo List Database. The database is designed to store and manage tasks for a ToDo List application.

## Getting Started

### Prerequisites

- **SQL Server:** Ensure that SQL Server is installed and running on your system.
- **SQL Server Management Studio (SSMS):** You'll need SSMS to execute SQL scripts.

### Database Creation

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/3bda1137/Database-For-TodoList-.git
    ```
    
2. **Execute the SQL Script:**

    - Open SQL Server Management Studio (SSMS).
    - Connect to your SQL Server instance.
    - Open and execute the script: `CreateDB_ToDoList.sql`.

### Database Schema

The database schema includes the following tables:

- **Tasks:** Stores information about individual tasks.
- **Categories:** Categorizes tasks for better organization.
- **User:** Stores user information for task assignment and ownership.
- **Subtask:** Represents subtasks associated with main tasks.
- **Notes:** Provides a space for additional notes related to tasks.

## Usage

1. **Connecting to the Database:**

    - Update your application's connection string to connect to the ToDoList database.

2. **Interacting with Tasks:**

    - Use SQL queries to manage tasks within the `Tasks` table.
    - Examples:
        - Retrieve all tasks: `SELECT * FROM Tasks;`
        - Add a new task: `INSERT INTO Tasks (Title, Description, DueDate) VALUES ('Task 1', 'Description 1', '2024-02-14');`
        - Update a task: `UPDATE Tasks SET Status = 'Completed' WHERE TaskID = 1;`
        - Delete a task: `DELETE FROM Tasks WHERE TaskID = 1;`

3. **Customization:**

    - Customize the database schema to fit the specific needs of your ToDo List application.
    - Add additional fields, tables, or relationships as required.

## Contributing

Contributions are welcome! If you have suggestions, improvements, or bug reports, please submit an issue.


## Contact

If you have any questions or need assistance, feel free to contact the project maintainers:

- [Abdallah Mohamed](mailto:abdallahmahfouz111@gmail.com)
