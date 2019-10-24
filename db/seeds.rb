
# patients t.string :first_name  t.string :last_name
# doctors  t.string :first_name  t.string :last_name t.string :specialty  t.string :zip_code
# appointements t.datetime :date doctor_id patient_id


require 'faker'
City.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointement.destroy_all
Specialty.destroy_all

spec_name = ["Généraliste","Chirurgien","Dermatologue","Ophtalmologue"]
spec_name.each do |sname|
Specialty.create!(name:sname)
end


	
100.times do
  cit = City.create!(name:Faker::Address.city)

  doc = Doctor.create!(specialty_id:rand(1..4),first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,zip_code: Faker::Address.postcode,city:cit)
  pat = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,city: cit)
  appointement = Appointement.create!(date: Faker::Date.backward(days: 3000),doctor: doc,patient: pat,city:cit)
end



puts "100 faker doctors/patients/appointements/cities ont été créé"

#Les ID de speciality ne reviennnent pas à 0 en relancant le seeds.db malgré le destroy