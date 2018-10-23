class ApplicationController < ActionController::Base
  include Wor::Paginate
  include Pundit
  protect_from_forgery with: :null_session
end
