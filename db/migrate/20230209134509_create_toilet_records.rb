class CreateToiletRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :toilet_records do |t|
      t.time :time
      t.string :toilet_method
      t.date :date
      t.string :defecation_record
      t.string :urination_record
      t.string :defecation_status

      t.timestamps
    end
  end
end
