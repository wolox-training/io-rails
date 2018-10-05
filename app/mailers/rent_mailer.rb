class RentMailer < ApplicationMailer
  def welcome_email(@rent)
      @rent = User.find(user_id)

      mail(   :to      => @user.email,
              :subject => ""
      ) do |format|
        format.text
        format.html
      end
    end
end
