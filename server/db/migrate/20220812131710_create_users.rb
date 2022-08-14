class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.references :address, null: false, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
