class ApplicationController < ActionController::Base
  include Wor::Paginate
  protect_from_forgery with: :null_session
<<<<<<< HEAD
  include Pundit
=======
>>>>>>> 057373f... Fixed  rubocop offences
end
