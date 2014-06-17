class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
  end
  
  def create
    Book.create params_book
    redirect_to books_path
  end

  private

  def params_book
    params.require(:book).permit(:title, :author, :note, :image)
  end
end