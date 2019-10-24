class AddCityToApp < ActiveRecord::Migration[5.2]
  def change
  	add_reference :appointements, :city, foreign_key: true
  end
end
