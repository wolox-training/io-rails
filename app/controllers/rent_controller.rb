class RentController < ApplicationController
  include DeviseTokenAuth::Concerns::SetUserByToken
  include Wor::Paginate

  def create
    rent = Rent.create( user_id: params[:user],
                  book_id: params[:book],
                  rent_date: params[:rent_date],
                  rent_end: params[:rent_end]
                )
    render json: rent
  end
  def list
    user = User.find_by_email!(request.headers["uid"].to_s)
    render_paginated Rent.where("user_id="+ user.id.to_s)
  end

  #before_action :authenticate_user!
end
