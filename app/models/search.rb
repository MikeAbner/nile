class Search

  def execute type, term
    puts "TYPE: '#{type}'"
    case type
    when "t" then search_by_title(term)
    when "a" then search_by_author(term)
    when "s" then search_by_subject(term)
    else          invalid_search(type, term)
    end
  end

private

  def search_by_title term
    search(Book, term)
  end

  def search_by_author term
    search(Author, term)
  end

  def search_by_subject term
    search(Subject, term)
  end

  def search klass, term
    books = case klass.name
    when "Book"
      klass.includes(:authors, :subjects).where("name like ?", "#{term}%").all
    when "Author"
      klass.includes(books: [:subjects]).where("name like ?", "#{term}%").all.map(&:books).flatten
    when "Subject"
      klass.includes(books: [:authors]).where("name like ?", "#{term}%").all.map(&:books).flatten
    else
      []
    end

    result = []

    books.each do |book|
      result << book.build_result
    end

    result
  end

  def invalid_search search_type, search_term
    { msg: "I did not understand your search. What did you mean by search_type: '#{search_type}' and search_term: '#{search_term}'"}
  end
end