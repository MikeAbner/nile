# The Nile Bookstore!

Amazon has gotten out of control. It's also really old. We need a new app focused on books only! Nile is here to save the day!

## Your Mission

1. Get this basic Ruby 2.4.0 and Rails 5.1 app running. (30 minutes)

2. Style the homepage to match the mock in the docs folder. (1 to 2 hours)

3. Implement some ajax request to fill in the book/author/subject listing sections on page load (30 minutes)

4. Implement the search box to search the database and display the results (30 minutes)

5. Implement the search history section so users can easily re-execute a search with a single click (30 minutes)

## Application Architecture

The backend of the application should be fully functional and ready to go. 

The data model is pretty basic. The main table is the books table. Each book has many authors through a join table called authors_books. Each book also has many subjects through a join table called books_subjects.

So, you end up with something like this:

Title: The Pragmatic Programmer
Authors: Dave Thomas, Andy Hunt
Subjects: Programming, Ruby, Technology

You can see a list of the books, subjects, and authors in seeds.rb.

There are 4 endpoints that each return some data in json format.

* /search - This endpoint takes some input in the form "&#60;type&#62;:&#60;term&#62;" and returns a list of books with their associated authors and subjects. So "t:program" would do a search on the books table and find all books that start with "Program" (or "program"...it's case insensitive) and "s:ruby" would find all the subjects that started with "Ruby"
* /by_title - This endpoint takes no input and returns a list of books organized by book title
* /by_author - This endpoint takes no input and returns a list of books organized by author
* /by_subject - This endpoint takes no input and returns a list of books organized by subject

The homepage of the app has been pre-configured to load some javascript and css. You should be able to modify those files in place and have the changes reflected on the homepage without any extra work.

You can find the javascript file in app/assets/javascripts/home.js
You can find the stylesheet file in app/assets/stylesheets/home.css.scss.

## Setup

1. First thing to do is to get ruby/rails up and running. On a Mac I recomend using homebrew to install rvm (https://rvm.io/) and then using rvm to install ruby 2.4.0. I can't offer much help for Windows or Linux unfortunately, but there is a one click installer for ruby on windows that might be all you need. (https://rubyinstaller.org/)

2. Install the bundler gem with "gem install bundler"

3. Run "bundle install" to install Rails and all it's dependencies.

5. Start your rails app with "rails s"

6. Navigate to <http://localhost:3000> and view the Nile application in all it's glory. You can also test to make sure the backend is working by navigating to <http://localhost:300/by_title>, <http://localhost:300/by_author>, <http://localhost:300/by_subject> to see the data being retuned.

## Requirements

1. The Nile app is very sparse right now. We need to make it pretty.  There are two mocks in the docs directory that will help make Nile beautiful. The first (nile.png) is how the page should look after initial load. The second (nile_results.png) is how it should look after a search has been made and results returned.

2. The three lists of books are empty (Books by Title, Books by Author, Books by Subject).  When the page loads, fetch the data from the backend and display it in the appropriate sections.

3. The search box does not work! It's supposed to execute a search when the user enters the correct search request and presses enter.  We don't want any buttons on this page, so make sure the search box can respond to the enter key being pressed. When that happens you should call the appropriate endpoint and display the results of the search.

4. After every search is complete, you should add what was searched to the search results sections. Each entry in that section should also list the number of search results returned for that search. You should allow the user to click on that item to re-execute the search. You don't need to persist the history. 

5. Write a two or three paragraph summary about how you implemented things things, and why. What are some other choices that you could have made? What tradeoffs did you make? 

## Tips

1. Feel free to completely rewrite the provided HTML in app/views/home/index.html.erb if you would do something differently.

2. Feel free to completely rewrite the CSS that is provided in app/assets/stylesheets/home.css.scss.

3. Don't mess with app/views/layouts/application.html.erb or you might end up deep in the bowels of Rails trying to troubleshoot

4. Feel free to add any additional javascript or css files if you want. You can add them to /app/assets/javascripts/ and /app/assets/stylesheets. Rails can often have issues with adding new files, for css/javascipt. Don't try to fight rails, we won't count all your code in two files against you.

## Evaluation

What we are going to look for are pretty straightforward.

1. Does the layout match the mock as closely as possible? Is the CSS well organized?

2. Does the Nile application work the way it should based on the Requirements section?

3. Is the code well organized and does it follow traditional javascript coding conventions?

4. Bells and Whistles. If there is time, how can you improve on the bookstore? For example, the fonts in the mock are located here: https://fonts.google.com/specimen/Noto+Sans and http://fontawesome.io/assets/font-awesome-4.7.0.zip. 

5. Your summary statement. Are your choices sensible, and well explained?

## Support

We recognize that there might be questions. Please feel free to email mike@homelight.com to ask for clarifications about the requirements. I'm happy to fill in more detail there. I won't offer any help getting things set up unless, you find something specific about the actual backend code that isn't working. There are plenty of resources about getting ruby and rails installed and running. There are also plenty of good guides about the basics of Rails, but you shouldn't need to know much of that to make the frontend shine!


