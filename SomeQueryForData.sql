-- Use the ToDoList database
USE ToDoList;

-- Query 1: Retrieve all tasks along with their associated user names
SELECT Tasks.*, Users.UserName
FROM Tasks
JOIN Users ON Tasks.UserID = Users.ID;

-- Query 2: List all completed tasks
SELECT * FROM Tasks
WHERE Completed = 1;

-- Query 3: Find tasks associated with a specific category
SELECT Tasks.*
FROM Tasks
JOIN TaskCategories ON Tasks.ID = TaskCategories.TaskID
WHERE TaskCategories.CategoryID = 1; -- Replace 1 with the desired category ID

-- Query 4: Retrieve notes for a specific task
SELECT Notes.*
FROM Notes
WHERE Notes.TaskID = 1; -- Replace 1 with the desired task ID

-- Query 5: Get subtasks for a particular task
SELECT SubTasks.*
FROM SubTasks
WHERE SubTasks.TaskID = 1; -- Replace 1 with the desired task ID

-- Query 6: Count the number of tasks in each category
SELECT Categories.CategoryName, COUNT(TaskCategories.TaskID) AS TaskCount
FROM Categories
LEFT JOIN TaskCategories ON Categories.ID = TaskCategories.CategoryID
GROUP BY Categories.CategoryName;

-- Query 7: Retrieve tasks due after a specific date
SELECT *
FROM Tasks
WHERE TaskDate > '2024-02-15'; -- Replace '2024-02-15' with the desired date

-- Query 8: Find tasks with their associated categories and user names
SELECT Tasks.*, Categories.CategoryName, Users.UserName
FROM Tasks
JOIN TaskCategories ON Tasks.ID = TaskCategories.TaskID
JOIN Categories ON TaskCategories.CategoryID = Categories.ID
JOIN Users ON Tasks.UserID = Users.ID;

-- Query 9: List users along with the total number of tasks they have
SELECT Users.UserName, COUNT(Tasks.ID) AS TaskCount
FROM Users
LEFT JOIN Tasks ON Users.ID = Tasks.UserID
GROUP BY Users.UserName;

-- Query 10: Retrieve tasks with their notes and subtasks
SELECT Tasks.*, Notes.NoteText, SubTasks.SubTaskText
FROM Tasks
LEFT JOIN Notes ON Tasks.ID = Notes.TaskID
LEFT JOIN SubTasks ON Tasks.ID = SubTasks.TaskID;

-- Query 11: Find incomplete tasks with their associated categories and user names
SELECT Tasks.*, Categories.CategoryName, Users.UserName
FROM Tasks
JOIN TaskCategories ON Tasks.ID = TaskCategories.TaskID
JOIN Categories ON TaskCategories.CategoryID = Categories.ID
JOIN Users ON Tasks.UserID = Users.ID
WHERE Tasks.Completed = 0;

-- Query 12: Count the number of notes for each task
SELECT Tasks.ID, COUNT(Notes.ID) AS NoteCount
FROM Tasks
LEFT JOIN Notes ON Tasks.ID = Notes.TaskID
GROUP BY Tasks.ID;
