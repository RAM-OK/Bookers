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
  
  def Back
   @book = Book.find(params[:id])
   @show = Show.all
  end
   
  def create
   @book = Book.new(book_params)
   if @book.save
    flash[:notice] = "投稿に成功しました。"
    redirect_to books_path
   else
    flash[:alret] = "投稿に失敗しました。"
    @books = Book.all
    render :index
   end
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end