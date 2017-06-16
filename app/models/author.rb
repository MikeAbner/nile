class Author < ActiveRecord::Base
  has_and_belongs_to_many :books

  def self.list_all
    results = []
    
    Author.includes(books: [:subjects]).all.each do |author|
      results << {
        name: author.name,
        books: build_books_key(author)
      }
    end

    results
  end

private

  def self.build_books_key author
    results = []
    
    author.books.each do |book|
      results << { 
        name: book.name,
        subjects: book.subjects.map(&:name)
      }
    end

    results
  end

end