-- Use the ToDoList database
USE ToDoList;

-- Create the Users table
CREATE TABLE Users
(
   ID INT IDENTITY(1,1) PRIMARY KEY,    -- User ID (auto-incremented)
   UserName VARCHAR(40) NOT NULL,       -- User's name
   Email VARCHAR(30) NOT NULL,          -- User's email
   PasswordHash VARCHAR(64) NOT NULL    -- Password hash for security
);

-- Create the Tasks table
CREATE TABLE Tasks 
(
    ID INT IDENTITY(1,1) PRIMARY KEY,        -- Task ID (auto-incremented)
    TaskName VARCHAR(40) NOT NULL,           -- Task name
    Description NVARCHAR(255),               -- Task description
    Completed BIT DEFAULT 0 NOT NULL,        -- Task completion status (default: not completed)
    TaskDate DATE NOT NULL,                  -- Task due date
    UserID INT,                              -- Foreign key referencing Users table
    CONSTRAINT FK_Tasks_Users FOREIGN KEY (UserID) REFERENCES Users(ID)
);

-- Create the Categories table
CREATE TABLE Categories
(
    ID INT IDENTITY(1,1) PRIMARY KEY,        -- Category ID (auto-incremented)
    CategoryName VARCHAR(40) NOT NULL        -- Category name
);

-- Create the TaskCategories table to establish a many-to-many relationship between Tasks and Categories
CREATE TABLE TaskCategories
(
    CategoryID INT,                          -- Foreign key referencing Categories table
    TaskID INT,                              -- Foreign key referencing Tasks table
    CONSTRAINT FK_TaskCategories_Tasks FOREIGN KEY (TaskID) REFERENCES Tasks(ID),
    CONSTRAINT FK_TaskCategories_Categories FOREIGN KEY (CategoryID) REFERENCES Categories(ID)
);

-- Create the Notes table
CREATE TABLE Notes
(
    ID INT IDENTITY(1,1) PRIMARY KEY,        -- Note ID (auto-incremented)
    NoteText NVARCHAR(255),                  -- Note text
    TaskID INT NOT NULL,                     -- Foreign key referencing Tasks table
    CONSTRAINT FK_Notes_Tasks FOREIGN KEY (TaskID) REFERENCES Tasks(ID) 
);

-- Create the SubTasks table
CREATE TABLE SubTasks
(
    ID INT IDENTITY(1,1) PRIMARY KEY,        -- SubTask ID (auto-incremented)
    SubTaskText NVARCHAR(255),               -- SubTask text
    TaskID INT NOT NULL,                     -- Foreign key referencing Tasks table
    CONSTRAINT FK_SubTasks_Tasks FOREIGN KEY (TaskID) REFERENCES Tasks(ID) 
);
