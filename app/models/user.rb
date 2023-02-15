class User < ApplicationRecord

  has_many :meal_drug_taking_records, dependent: :destroy
end
