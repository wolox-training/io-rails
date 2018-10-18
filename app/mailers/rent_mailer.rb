class RentMailer < ApplicationMailer
  def rent_email(rent)
    @user = rent.user
    @rent = rent
    @book = rent.book
    mail(to: @user.email,
         subject: 'Book Rent')
  end
end
