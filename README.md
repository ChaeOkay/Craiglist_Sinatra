    $ git clone https://github.com/ChaeOkay/Craiglist_Sinatra
    $ cd Craiglist_Sinatra
    $ rake db:create; rake db:migrate; rake db:seed
    $ shotgun
open `localhost:9393` in your favorite browser.


#Craigslist Jr

We're going to build a simple version of Craigslist. This will be your first web application that uses multiple models.

Keep in mind that this is not substantially different than a command-line version. Instead of reading in command-line arguments, we read in URL parameters. Instead of printing to the console, we print HTML and CSS.

We'll only have two models in a one-to-many relationship; no different than your command-line TODO app.

As with all the Sinatra apps, start with the DBC Sinatra Skeleton

##Learning Goals
Deepen your ActiveRecord skills around associations.
Learn how to implement all four parts of CRUD: create, read, update, and delete.
Objectives
Wireframe With Your Pair
Never heard of a web wireframe? Check out what Wikipedia has to say. TL;DR -- figure out what pages your app needs, then sketch-out the basic layout of each and the connections between them.

The application will have two core models: Post and Category. A Post belongs to a Category and a Category has many Posts.

A Category is something like "Apartment Rentals" or "Auto Parts."

Sit down and work out with your pair what pages you're going to be building. At a minimum, you'll need:

A page that lists all the categories
A page that lists all the postings in a given category
A page that lets someone create a new posting in a given category
A page that lets someone who has created a page return to edit/update the page
If you're never used Craigslist, it doesn't have any kind of user authentication. Instead, when someone creates a post they're given a special "secret" URL that grants them powers to edit that post that looks like

##Controller Structure
Our controller structure will be more complicated. We'll want URLs that look like /categories/123 and /posts/456. We'll be using both get and post methods.

To create a new Post, for example, we'd want to submit an HTML form using the POST http method to the /posts URL, like so:

        <form action="/posts" method="post">
          <!-- other form elements here -->
        </form>
and to update an existing record (say with id 1234) we'd want to post to /posts/1234.

Controllers should either redirect to another URL or render a page. Typically, a page loaded via HTTP POST will redirect to an appropriate URL if a request succeeds and render an error page, otherwise.
