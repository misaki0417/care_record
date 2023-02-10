class CreateVitalRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :vital_records do |t|
      t.date :date
      t.time :time
      t.string :blood_pressure
      t.integer :pulse
      t.integer :body_temperature

      t.timestamps
    end
  end
end
