class SearchController < ApplicationController

  def create
    search_type, search_term = params[:search].split(":")

    result = Search.new.execute(search_type, search_term)

    render json: result
  end

  def by_title
    render json: Book.list_all
  end

  def by_author
    render json: Author.list_all
  end

  def by_subject
    render json: Subject.list_all
  end

end
