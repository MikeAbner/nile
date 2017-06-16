# The Nile Bookstore!

Amazon has gotten out of control. It's also really old. We need a new app focused on books only! Nile is here to save the day!

## Your Mission

1. Get this basic Ruby 2.4.0 and Rails 5.1 app running. (30 minutes)
2. Style the homepage to match the mock in the docs folder. (1 to 2 hours)
3. Implement some ajax request to fill in the book/author/subject listing sections on page load (30 minutes)
4. Implement the search box to search the database and display the results (30 minutes)
5. Implement the search history section so users can easily re-execute a search with a single click (30 minutes)

## Application Architecture

The backend of the application should be fully functional. 

The data model is pretty basic. The main table is the books table. Each book has many authors through a join table called authors_books. Each book also has many subjects through a join table called books_subjects.

So, you end up with something like this:

Title: The Pragmatic Programmer
Authors: Dave Thomas, Andy Hunt
Subjects: Programming, Ruby, Technology

There are 4 endpoints that each return some data in json format.

* /search - This endpoint takes some input in the form "<type>:<term>" and returns a list of books with their associated authors and subjects
* /by_title - This endpoint takes no input and returns a list of books organized by book title
* /by_author - This endpoint takes no input and returns a list of books organized by author
* /by_subject - This endpoint takes no input and returns a list of books organized by subject

The homepage of the app has been pre-configured to load some javascript and css. You should be able to modify those files in place and have the changes reflected on the homepage without any extra work.

You can find the javascript file in app/assets/javascripts/home.js
You can find the stylesheet file in app/assets/stylesheets/home.css

## Setup

1.) First thing to do is to get ruby/rails up and running. On a Mac I recomend using homebrew to install rvm (https://rvm.io/) and then using rvm to install ruby 2.4.0. I can't offer much help for Windows or Linux unfortunately, but there is a one click installer for ruby on windows that might be all you need. (https://rubyinstaller.org/)
2.) Install the bundler gem with "gem install bundler"
3.) Run "bundle install" to install Rails and all it's dependencies.
4.) Set up the database with "rake db:create" and then "rake db:migrate" and then "rake db:seed"
5.) Start your rails app with "rails s"
6.) Navigate to http://localhost:3000 and view the Nile application in all it's glory. You can also test to make sure the backend is working by navigating to /by_title, /by_author, /by_subject to make sure data is being returned.

## Requirements

1.) The Nile app is very sparse right now. We need to make it pretty.  There is a mock in the docs directory that will help make Nile beautiful.
2.) The three lists of books are empty (Books by Title, Books by Author, Books by Subject).  When the page loads, fetch the data from the backend and display it in the appropriate sections.
3.) The search box does not work! It's supposed to execute a search when the user enters the correct search request and presses enter.  We don't want any buttons on this page, so make sure the search box can respond to the enter key being pressed! When that happens you should call the appropriate endpoint and display the results of the search.
4.) After every search is complete, you should add what was searched to the search results sections. Each entry in that section should also list the number of search results returned for that search. You should allow the user to click on that item to re-execute the search.
5.) Write a quick two or three paragraph summary about how you implemented things and why? What tradeoffs did you make. What are some other choices that you could have made?

## Tips

1.) Feel free to completely rewrite the provided HTML in app/views/home/index.html if you would do something differently.
2.) Feel free to completely rewrite the CSS that is provided in app/assets/stylesheets/home.css.
3.) Don't mess with app/views/layouts/application.html.erb or you might end up deep in the bowels of Rails trying to troubleshoot
4.) Feel free to add any additional javascript or css files if you want, but know that you might have to fight with Rails alittle to get them working.

## Evaluation

It's always important to know how you are going to be evaluated.  What we are going to look for are pretty straightforward.

1.) Does the layout match the mock as closely as possible? Is the CSS well organized?
2.) Does the Nile application work the way it should based on the Requirements section?
3.) Is the code well organized and does it follow traditional javascript coding conventions?

## Support

We recognize that there might be questions. Please feel free to email mike@homelight.com to ask for clarifications about the requirements. I'm happy to fill in more detail there. I won't offer any help getting things set up unless you find something specific about the actual backend code that isn't working. There are plenty of resources about getting ruby and rails installed and running. There are also plenty of good guides about the basics of Rails, but you shouldn't need to know much of that to make the frontend shine!


