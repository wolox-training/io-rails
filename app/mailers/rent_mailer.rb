class RentMailer < ApplicationMailer
  def rent_email(rent)
    @user = User.find(rent.user_id)
    @rent = rent
    @book = Book.find(rent.book_id)
    mail(to: @user.email, subject: 'Book Rent')
  end

  def rent_remember(rent)
    @user = User.find(rent.user_id)
    @rent = rent
    @book = Book.find(rent.book_id)
    mail(to: @user.email, subject: 'Book Remember')
  end

  def rent_expiration(rent)
    @user = User.find(rent.user_id)
    @rent = rent
    @book = rent.book
    mail(to: @user.email, subject: 'Book Expiration')
  end
end
