# Bookmarks App

## User Stories

As a user,
To see the pages I’ve saved,
I’d like to see a list of bookmarks.

Object | Behaviour
------ | ---------
pages | save
bookmarks | list, show

![diagram for first user story](https://i.imgur.com/OCZvWaH.png)

Getting started:

1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager;`
3. Connect to the database using the `pqsl` command `\c bookmark_manager;`
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`

For tests:

1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager_test;`
3. Create a table using  ``CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));``
<!-- 4. Run the query we have saved in the file `01_create_bookmarks_table.sql` -->

## Decompose the requirement 'add new bookmarks' into a User Story.

As a user
So I can update my bookmarks
I would like to add new bookmarks to my list.
