class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @bookimage.save
    redirect_to book_path
  end
  
  def index
  end

  def show
  end

  def destroy
  end
  
   private

  def post_image_params
    params.require(:book).permit(:title, :image, :body)
  end
  
end