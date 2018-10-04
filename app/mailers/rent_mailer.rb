class RentMailer < ApplicationMailer
  def welcome_email(user_id)
      @user = User.find(user_id)

      mail(   :to      => @user.email,
              :subject => "Te rentaste algo nuevo capo"
      ) do |format|
        format.text
        format.html
      end
    end
end
