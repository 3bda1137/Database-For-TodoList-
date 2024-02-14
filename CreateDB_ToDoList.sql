-- Create a new database named ToDoList
CREATE DATABASE ToDoList
ON 
PRIMARY (
    NAME = 'ToDoList_data',
    FILENAME = 'E:\ITI_Intake_44\Projects\DB_ToDoList\DB\ToDoList.mdf',
    SIZE = 10MB,
    MAXSIZE = 100MB,
    FILEGROWTH = 5MB
)
LOG ON (
    NAME = 'ToDoList_log',
    FILENAME = 'E:\ITI_Intake_44\Projects\DB_ToDoList\DB\ToDoList.ldf', 
    SIZE = 10MB,
    MAXSIZE = 100MB,
    FILEGROWTH = 5MB
);

USE ToDoList;


