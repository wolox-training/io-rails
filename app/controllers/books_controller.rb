class BooksController < ApplicationController
  include Wor::Paginate
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :authenticate_user!
  def index
    render_paginated Book.all
  end

  def shows
    render json: Book.find(params[:id])
  end
end
