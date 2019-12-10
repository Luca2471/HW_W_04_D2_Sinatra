# Sinatra Films Homework

## MVP

Use the solution to your weekend homework (or use our solution). Add a controller and views to render a list of all the films in an unordered list (`<ul></ul>`)

### User Need

> "As a cinema goer I want to visit **localhost:4567/films** and see a list of films"

1. Create a **controller.rb**
2. Create a **views** directory
3. Create a new file called **index.erb** inside the directory
4. In the **controller.rb**, use the `Film.all()` method to get all the film objects and pass them to the view.

## Helpful Hints

1. Remember to check the database name, you may need to create/recreate it, run the sql file to make the tables and run the **console.rb** to add some sample data.
2. Remember the difference between <% %> and <%= %>
3. You will need to use a for loop in the view file to display all the films...

```erb
  <% for singular in array %>
    <%= singular.name %>
  <% end %>
```

Your list should look something like this:

![List of films](sinatra_cinema_1.png)

## Extension

### User Need

> "As a cinema goer I want to click on a film from the list of films and be taken to a page showing details for that film"

Make the film titles **anchor tags** that links to a page showing an individual film's details.

NOTE: You'll have to create a `find_by_id` class method in the Film class to find a specific film; a new view file; a new route in your controller.

Your film details page should look something like this:

![Film details](sinatra_cinema_2.png)

You're going to add a stylesheet to the app. In order to do this you'll have to create a **layout.erb** in your views directory.

Use Sinatra's layout.erb and <%= yield %> to create a side-wide template and apply a stylesheet to your app.

Your stylesheet should be in a directory called **public** at the same level as views and models

```
<link rel="stylesheet" href="/style.css">
```

Can you use CSS to remove the bullet points from the list of films and centre them in the screen?

BONUS: Use a colour palette to find good colours that work together (https://coolors.co)
