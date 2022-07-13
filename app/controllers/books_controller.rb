class BooksController < ApplicationController
  def top
  end
  
  def index
    @books = Book.all
    @book = Book.new
  end
  
  def show
    @shows = Show.all
    @show = Show.all
  end
  
  def create
   book = Book.new(book_params)
   book.save
   redirect_to books_path
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end