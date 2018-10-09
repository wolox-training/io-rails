class RentMailer < ApplicationMailer
  def welcome_email(user)
      @user = User.find(user_id)

      mail(   :to      => @user.email,
              :subject => ""
      ) do |format|
        format.text
        format.html
      end
    end
end
