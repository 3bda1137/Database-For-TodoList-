-- Use the ToDoList database
USE ToDoList;

-- Insert data into Users table
INSERT INTO Users (UserName, Email, PasswordHash) 
VALUES 
  ('Abdallah Mohamed', 'Abdallah111@gmail.com', 'hashed_password1'), -- User 1
  ('Yousef Mohamed', 'Yousef111@gmail.com', 'hashed_password2'),     -- User 2
  ('Mahfouz Mohamed', 'Mahfouz111@gmail.com', 'hashed_password3'),   -- User 3
  ('Osama Mahfouz', 'Osama111@gmail.com', 'hashed_password4');       -- User 4

-- Insert data into Tasks table
INSERT INTO Tasks (TaskName, Description, Completed, TaskDate, UserID)
VALUES 
  ('Task 1', 'Description for Task 1', 0, '2024-02-15', 1), -- Task 1
  ('Task 2', 'Description for Task 2', 1, '2024-02-16', 2), -- Task 2
  ('Task 3', 'Description for Task 3', 0, '2024-02-17', 3), -- Task 3
  ('Task 4', 'Description for Task 4', 1, '2024-02-18', 4); -- Task 4

-- Insert data into Categories table
INSERT INTO Categories (CategoryName) 
VALUES 
  ('Work'),      -- Category 1
  ('Personal'),  -- Category 2
  ('Study'),     -- Category 3
  ('Health');    -- Category 4

-- Insert data into TaskCategories table (associating tasks with categories)
INSERT INTO TaskCategories (CategoryID, TaskID) 
VALUES 
  (1, 1),  -- Task 1 is associated with the 'Work' category
  (2, 2),  -- Task 2 is associated with the 'Personal' category
  (3, 3),  -- Task 3 is associated with the 'Study' category
  (4, 4);  -- Task 4 is associated with the 'Health' category
 
-- Insert data into Notes table
INSERT INTO Notes (NoteText, TaskID) 
VALUES 
  ('Note for Task 1', 1), -- Note for Task 1
  ('Note for Task 2', 2), -- Note for Task 2
  ('Note for Task 3', 3), -- Note for Task 3
  ('Note for Task 4', 4); -- Note for Task 4

-- Insert data into SubTasks table
INSERT INTO SubTasks (SubTaskText, TaskID) 
VALUES 
  ('SubTask 1 for Task 1', 1), -- SubTask 1 for Task 1
  ('SubTask 1 for Task 2', 2), -- SubTask 1 for Task 2
  ('SubTask 1 for Task 3', 3), -- SubTask 1 for Task 3
  ('SubTask 1 for Task 4', 4); -- SubTask 1 for Task 4
