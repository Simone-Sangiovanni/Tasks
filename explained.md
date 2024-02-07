# MyHomePage
MyHomePage is a widget that list all the tasks (completed and not). It must fetch the tasks from an
SQLite database. Each element of the list must be Task.
When fetched from the database and displayed, each Task have to be styled according to completed/not-completed.

# CreateButton
The CreateButton create a new task, that has a content and a boolean value (that define if it is completed
or not). It must open the AddTask widget.

# AddTask
This widget allow a user to define his task (max 4000 words) and a button on the bottom of the widget
create the task add it to the database. After it complete the operation the widget must be closed.
Touching on another part of the screen the widget must be closed and nothing must be created.

# Task
This widget must show the content of the task. When pressed for 2 seconds a Delete widget have to show.
When touched must be marked as completed/not-completed: if completed have to become not-completed, if
not-completed have to become completed. 
When a Task is marked as completed, the content have to change style, must have a lineThrough decoration
and must be moved at the end of the MyHomePage list.

# Delete
This widget is a small window that ask if the task have to be removed. If the answer is YES the task
must be removed from the MyHomePage list and from the database.

# DATABASE
The database is an SQLite database that has just one table that contain each task. Each entry have:
- id (integer): define the order in which the tasks must be displayed on the screen
- content (text 4000 chars): is the content of the Task
- completed (bool): say if the task is completed or not