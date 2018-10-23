class BooksController < ApiController
  def index
    render_paginated Book.all
  end

  def show
    render json: Book.find(params[:id])
  end

  def from_api
    render json: OpenLibraryService.new.book_info(isbn).as_json
  end

  private

  def isbn
    @isbn ||= params.require(:isbn)
  end
end
