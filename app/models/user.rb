class User < ApplicationRecord

  has_many :meal_drug_taking_records, dependent: :destroy
  has_many :vital_records, dependent: :destroy
  has_many :toilet_records, dependent: :destroy
end
