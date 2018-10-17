class RentsController < ApplicationController

  #before_action :authenticate_user!


  def create
    rent = Rent.new(create_params.merge(user: current_user) )# with this we can be sure the rent will be associated to the current_user

    if rent.save
      mail = RentMailer.rent_email(rent)
      mail.deliver_later
      render json: rent
    else
      puts "Sad path"
    end
  end




  def index
    render_paginated Rent.where('user_id=' + current_user.id.to_s)
  end


end
