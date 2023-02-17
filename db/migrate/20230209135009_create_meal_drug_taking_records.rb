class CreateMealDrugTakingRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :meal_drug_taking_records do |t|
      t.date :date
      t.time :time
      t.integer :ingestion_quantity
      t.string :drug_taking_record
      t.integer :user_id

      t.timestamps
    end
  end
end
