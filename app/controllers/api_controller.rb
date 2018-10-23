class ApiController < ApplicationController
  protect_from_forgery with: :null_session
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :authenticate_user!
  rescue_from ActionController::ParameterMissing, with: :show_errors

  def show_errors
    render json: "Parameter can't be blank"
  end
end
