class LinkDoctorAndSpecialty < ActiveRecord::Migration[5.2]
  def change
  	remove_column :specialties, :doctor
  	remove_column :doctors, :specialty

  end
end
