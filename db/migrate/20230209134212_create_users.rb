class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.date :birthdate
      t.string :profile
      t.string :user_name

      t.timestamps
    end
  end
end
