class BooksController < ApplicationController
  def top
  end
  
  def index
    @books = Book.all
    @book = Book.new
  end
  
  def show
    @book = Book.find(params[:id])
    @show = Show.all
  end
  
  def edit
   @book = Book.find(params[:id])
  end
  
  def update
   book = Book.find(params[:id])
   book.update(list_params)
   redirect_to book_path(path.id)
  end
  
  def destroy
   book = Book.find(params[:id])
   book.destroy
   redirect_to '/books'
  end
  
  def Back
   @book = Book.find(params[:id])
   @show = Show.all
  end
   
  def create
   @book = Book.new(book_params)
   if @book.save
    flash[:notice] = "Book was successfully created."
    redirect_to book_path(@book.id)
   else
    @books = Book.all
    render :index
   end
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end