programming = Subject.create(name: "Programming")
ruby        = Subject.create(name: "Ruby")
elixir      = Subject.create(name: "Elixir")
technology  = Subject.create(name: "Technology")
history     = Subject.create(name: "History")

dave_thomas = Author.create(name: "Dave Thomas")
andy_hunt   = Author.create(name: "Andy Hunt")
chad_fowler = Author.create(name: "Chad Fowler")
sam_ruby    = Author.create(name: "Sam Ruby")
dhh         = Author.create(name: "David Heinemeier Hansson")
walter      = Author.create(name: "Walter Isaacson")

programming_ruby = Book.new(name: "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide")
programming_ruby.authors << [dave_thomas, andy_hunt, chad_fowler]
programming_ruby.subjects << [programming, ruby, technology]
programming_ruby.save

programming_elixir = Book.new(name: "Programming Elixir 1.3: Functional |> Concurrant |> Pragmatic |> Fun")
programming_elixir.authors << dave_thomas
programming_elixir.subjects << [programming, elixir, technology]
programming_elixir.save

agile_web_dev = Book.new(name: "Agile Web Development with Rails 4")
agile_web_dev.authors << [sam_ruby, dave_thomas, dhh]
agile_web_dev.subjects << [programming, ruby, technology]
agile_web_dev.save

steve_jobs = Book.new(name: "Steve Jobs")
steve_jobs.authors << walter
steve_jobs.subjects << [history, technology]
steve_jobs.save

ben = Book.new(name: "Benjamin Franklin: An American Life")
ben.authors << walter
ben.subjects << [history]
ben.save

albert = Book.new(name: "Einstein: His Life and Universe")
albert.authors << walter
albert.subjects << [history, technology]
