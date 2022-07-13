class DestroysController < ApplicationController
 def destroy
  book = Book.find(params[:id])
  book.destroy
  redirect_to '/books'
 end
　
 private
end
