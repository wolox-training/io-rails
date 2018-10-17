class RentMailer < ApplicationMailer

  def rent_email(rent)
    @user = rent.user
    @rent = rent
    @book = Book.find(rent.book_id)
    I18n.locale = 'en'
    mail(to: @user.email,
         subject: 'Book Rent') do |format|
      format.text
      format.html
    end
  end
end
