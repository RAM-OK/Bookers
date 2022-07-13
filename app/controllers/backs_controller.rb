class BacksController < ApplicationController
 def top
 end
 
 def create
  book = Book.new(book_params)
  book.save
  redirect_to books_path
 end
 
end