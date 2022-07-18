class ShowsController < ApplicationController
  def top
  end
  
  def edit
   @edits = Edits.all
   @edits = Edit.all
  end
  
  def back
   @books = Books.all
   @book = Books.all
  end
  
  private
  
end
