class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :authour
      t.integer :rate, limit: 1
      t.decimal :price
      t.integer :stock

      t.timestamps
    end
  end
end
