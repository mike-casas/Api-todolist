== README


Todo - API

This is the API of a public Todo List. It is based on REST (Representational State Transfer), which makes integration easier by using all the advantages that the HTTP protocol has to offer.

Note: The database is cleaned every night at midnight.
Format

We use JSON (JavaScript Object Notation) for requests and responses. JSON is a lightweight data-interchange format that is easy to write and read by both machines and humans. JSON is more compact than XML, faster to analyze, and easier to interpret.
Endpoints

The API of the Todo application exposes the following methods:

    List Todo Items
    Create Todo Item
    Update Todo Item
    Delete Todo Item

List Todo Items

To list all the items in the Todo List, make a GET call to the /todo_items endpoint:

GET http://mike-todolist.herokuapp.com/todo_items

Example

Copy and paste the following line to your console:

curl -i http://mike-todolist.herokuapp.com/todo_items

Result

If everything works as expected, you will receive a status 200 OK with the items in the body of the response:

[
  { "title": "Item 1", "done": false, "create_at": "...", "updated_at": "" },
  { "title": "Item 2", "done": true, "create_at": "...", "updated_at": "" },
  { "title": "Item 3", "done": false, "create_at": "...", "updated_at": "" }
]

Create Todo Item

To add a new item to the Todo List, make a POST call to the /todo_items endpoint with the title of the item:

POST http://mike-todolist.herokuapp.com/todo_items

{ "title": "Item 1" }

Example

Copy and paste the following line to your console:

curl -i -X POST -H 'Content-Type: application/json' -d '{ "title": "Item 1" }' http://mike-todolist.herokuapp.com/todo_items

Result

If everything works as expected, you will receive a status 200 OK with the created item:

{ "id": 1, "title": "Item 1", "done": false, "create_at": "...", "updated_at": "" }

Update Todo Item

To update an item to the Todo List, make a PUT call to the /todo_items/<item_id> endpoint with the changes you want to make:

PUT http://mike-todolist.herokuapp.com.herokuapp.com/todo_items/<item_id>

{ "title": "Changed title", "done": true }

Example

Copy and paste the following line to your console:

curl -i -X PUT -H 'Content-Type: application/json' -d '{ "done": true }' http://mike-todolist.herokuapp.com/todo_items/1

Result

If everything works as expected, you will receive a status 204 No Content
Delete Todo Item

To delete an item to the Todo List, make a DELETE call to the /todo_items/<item_id> endpoint:

DELETE http://mike-todolist.herokuapp.com/todo_items/<item_id>

Example

Copy and paste the following line to your console:

curl -i -X DELETE http://mike-todolist.herokuapp.com/todo_items/1

Result

If everything works as expected, you will receive a status 204 No Content

