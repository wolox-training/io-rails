class ApplicationController < ActionController::Base
  include Wor::Paginate
  protect_from_forgery with: :null_session
end
