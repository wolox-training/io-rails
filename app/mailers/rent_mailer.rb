class RentMailer < ApplicationMailer
  def welcome_email(rent)
      @user = User.find(rent.user_id)

      mail(   :to      => user.email,
              :subject => ""
      ) do |format|
        format.text
        format.html
      end
    end
end
