class DropInstalls < ActiveRecord::Migration[5.2]
  	 def change
    drop_table :doctors_specialties
  end
end
