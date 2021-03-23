class BooksController < ApplicationController
  def book_params
    params.require(:book).permit(:title, :description, :price, :page, :year)
  end

  def current_book
    Book.find params[:id]
  end

  def index
    @title = 'Buku'
    @books = Book.all
  end

  def show
    @book = current_book
  end
  def edit
    @book = current_book
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path, notice: "Buku #{@book.title} berhasil disimpan"
    else
      render 'new'      
    end
  end


  def update
    @book = current_book
    if @book.update book_params
      redirect_to books_path, notice: 'Berhasil memperbarui data buku'
    else
      render 'edit'
    end
  end

  def destroy
    @book = current_book
    @book.destroy
    redirect_to books_path, notice: 'Berhasil menghapus data buku'
  end
end
