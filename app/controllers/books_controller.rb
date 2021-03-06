class BooksController < ApplicationController

  def create
    flash[:notice] = "successfully"
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    flash[:notice] = "successfully"
    @book = Book.find(params[:id])
  end

  def update
    flash[:notice] = "Book was successfully updated."
    @book = Book.find(params[:id])
    @book.update(book_params)
    if @book.save
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
   flash[:notice] = " Book was successfully destroyed."
   book = Book.find(params[:id])
   book.destroy
   redirect_to '/books'
  end

  private
    def book_params
      params.require(:book).permit(:title, :body)
    end

end
