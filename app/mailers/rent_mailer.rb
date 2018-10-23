class RentMailer < ApplicationMailer
  def rent_email(rent)
    @user = rent.user
    @rent = rent
    @book = rent.book
    mail(to: @user.email,
         subject: 'Book Rent')
  end

  def rent_remember(rent)
    @user = rent.user
    @rent = rent
    @book = rent.book
    mail(to: @user.email, subject: 'Book Remember')
  end

  def rent_expiration(rent)
    @user = rent.user
    @rent = rent
    @book = rent.book
    mail(to: @user.email, subject: 'Book Expiration')
  end
end
