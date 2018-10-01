class BooksController < ApplicationController
  include Wor::Paginate
  include DeviseTokenAuth::Concerns::SetUserByToken
  def index
    render_paginated Book.all
  end

  def shows
    render json: Book.find(params[:id])
  end
  before_action :authenticate_user!
end
