class ShowsController < ApplicationController
  def top
  end
  
  def edit
   @bookers = Bookers.all
   @booker = Booker.all
  end
  
  def back
   @books = Books.all
   @book = Books.all
  end
  
  private
  
end
