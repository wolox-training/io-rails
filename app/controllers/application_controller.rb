class ApplicationController < ActionController::Base
  include Wor::Paginate
  include Pundit
  protect_from_forgery with: :null_session
  #  rescue_from ActionController::ParameterMissing, with: :show_errors

  # def show_errors
  # render json: "ISBN can't be blank"
  #  end
end
