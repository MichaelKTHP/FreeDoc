class DoctorSpecialty < ActiveRecord::Migration[5.2]
  def change
  	   create_table :doctors_specialties do |t|
      t.belongs_to :doctor
      t.belongs_to :specialty
  end
  end
end
#J'avais une migration add reference to :doctors specialty foreign key et 
#:specialties doctor foreign key
#mais le fichier a disparu
