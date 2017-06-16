class Book < ActiveRecord::Base
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :subjects

  def self.list_all
    results = []
    
    Book.includes(:authors, :subjects).all.each do |book|
      results << book.build_result
    end

    results
  end

  def build_result
    {
      name: self.name,
      authors: self.authors.map(&:name),
      subjects: self.subjects.map(&:name)
    }
  end
end