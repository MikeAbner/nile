class Subject < ActiveRecord::Base
  has_and_belongs_to_many :books

  def self.list_all
    results = []
    
    Subject.includes(books: [:authors]).all.each do |subject|
      results << {
        name: subject.name,
        books: build_books_key(subject)
      }
    end

    results
  end

private

  def self.build_books_key subject
    results = []
    
    subject.books.each do |book|
      results << { 
        name: book.name,
        authors: book.authors.map(&:name)
      }
    end

    results
  end

end