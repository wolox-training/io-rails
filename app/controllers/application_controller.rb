class ApplicationController < ActionController::Base
  include Wor::Paginate
  include DeviseTokenAuth::Concerns::SetUserByToken
  protect_from_forgery with: :null_session
  include Wor::Paginate
  include DeviseTokenAuth::Concerns::SetUserByToken
end
