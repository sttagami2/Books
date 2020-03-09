class BooksController < ApplicationController
  
  # ・データベースに保存されているデータを読み込み表示するページ
  # ・ユーザーが新たに本の題名と内容を保存するページ
  def index    
    @book = Book.new
    @books = Book.all     # dbに保存されてる一覧?
  end


  # ・ユーザーが新たに本の題名と内容を保存する時のアクション
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(book.id)        # Show.htmlの画面に移行
    else
      @books = Book.all   
      render :index                         # renderはコントローラを介さずにViewへデータを返す → 返すデータをrender前に定義すること！
    end
  end


  # ・データベースに保存されている各データの詳細を表示するページ
  def show
    @book = Book.find(params[:id])
  end

  # def new

  # end

  # ・データベースに保存されている各データを編集するためのページ
  def edit
    @books = Book.find(params[:id])
  end

  # ・編集後にデータベースに再度保存する時のアクション
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    flash[:notice] = "Book was successfully updated."
    redirect_to book_path(book.id)
  end

  # ・本の題名と内容を削除するためのアクション
  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = "Book was successfully destroyed."
    redirect_to books_path
  end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end     # ← 記述忘れがち！

end
