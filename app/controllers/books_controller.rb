class BooksController < ApplicationController
  def top
  end
  
  def index
    @books = Book.all
    @book = Book.new
  end
end