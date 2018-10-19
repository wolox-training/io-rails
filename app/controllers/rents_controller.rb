class RentsController < ApiController
  before_action :authenticate_user!

  def create
    rent = Rent.new(create_params.merge(user: current_user))
    if rent.save
      mail = RentMailer.rent_email(rent)
      mail.deliver_later
      render json: rent
    else
      render json: { errors: rent.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def create_params
    params.permit(:book_id, :rent_date, :rent_end)
  end

  def index
    render_paginated current_user.rents
  end

  def show
    @rent = Rent.find(params[:rent_id])
    authorize @rent
    render json: @rent
  end
end
