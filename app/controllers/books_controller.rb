class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/show'
  end

  def show
  end

  # def new
  #   @book = Book.new
  # end

  def edit
  end

  def delete
  end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end     # ← 記述忘れがち！

end
