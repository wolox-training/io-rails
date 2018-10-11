class RentPolicy
  attr_reader :rent

  def initialize (rent)
    @rent = rent

  end

  def show?
    if 6 == rent.user_id
    end
    byebug
  end

end
