class BooksController < ApiController
  before_action :authenticate_user!

  def index
    render_paginated Book.all
  end

  def show
    render json: Book.find(params[:id])
  end

  def from_api
    render json: OpenLibraryService.new.book_info(params[:isbn]).as_json
  end
end
