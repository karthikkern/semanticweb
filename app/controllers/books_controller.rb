class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(params[:book])
    @book.save
    flash[:notice] = 'Book was successfully created.'
    redirect_to books_url
  end

  def update
    @book = Book.find(params[:id])
    @book.update_attributes(params[:book])
    flash[:notice] = 'Book was successfully updated.'
    redirect_to books_url
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_url
  end
end
