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

    def rent_email(rent)
      @user = User.find(rent.user_id)
      @rent = rent
      @book = Book.find(rent.book_id)
      I18n.locale='en'
      mail(   :to      => @user.email,
              :subject => "Book Rent"
      ) do |format|
        format.text
        format.html
      end
    end
end
