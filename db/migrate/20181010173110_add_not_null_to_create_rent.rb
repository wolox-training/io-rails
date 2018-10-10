class AddNotNullToCreateRent < ActiveRecord::Migration[5.1]
  def change

      
      change_column_null(:rents, :rent_date, false)
      change_column_null(:rents, :rent_end, false)

  end
end
