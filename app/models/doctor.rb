class Doctor < ApplicationRecord
  has_many :appointements
  has_many :patients, through: :appointements
  belongs_to :city
  has_and_belongs_to_many :specialties
end
