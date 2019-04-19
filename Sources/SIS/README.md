### TIER University Student Information System

This is a sample database-driven application that provides a simplified example
of a Student Information System (SIS). This application is used as a source of
student data in order to demonstrate how TIER components can interact with an
existing campus SIS.

## Data Structures

There are three tables built as a part of the application. `Users` is a list of
people within the SIS. `Courses` contains a list of courses, and `courses_users`
is a join table that lists user / course enrollments. 

Useful view of course enrollments: `select b.uid, c.course_name from
courses_users a inner join users b on a.user_id = b.id inner join courses c on
a.course_id = c.id`


## Build Instructions
 
To build the containers, run `docker-compose build``

To run the demo application, run `docker-compose up`

Once the app is up and running, create and seed data by running the following
scripts:

1. `./db_create.sh`
2. `./db_migrate.sh`
3. `./db_seed.sh`

To restart the containers after the initial startup and database setup, run
`restart.sh`
 
## Running the application

The application will be available at http://localhost:3000. To add / modify
users, go to http://localhost:3000/users. To add/modify courses, go to
http://localhost:3000/courses.

