class BooksController < ApplicationController
  def index
    @books = Book.all
    # @booksはインスタンス変数であり、取得したデータをViewに渡す役目
    # Book.allはbooksテーブルから全てのデータを取得し、インスタンス変数@booksに代入する役目
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
    # 空のインスタンスをViewに渡す
    # 新規データ登録用のbookインスタンスを、Bookモデルから作成する
    # Book.newと記述すると、空のモデルが生成される
    # インスタンス変数を書いた空のモデルを渡すと、フォームとBookモデルが関連づけられる
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path(book.id)
  end

  def edit
    @book = Books.find(params[:id])
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
    # フォームから送られてきた投稿を、createアクションに保存する処理
    # Strong Parametersを使うと、フォームからのデータを受け取れるようになる。
    # とても大切！ → 覚えておこう
  end
end
