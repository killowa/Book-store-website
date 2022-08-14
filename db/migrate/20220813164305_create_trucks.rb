class CreateTrucks < ActiveRecord::Migration[6.1]
  def change
    create_table :trucks do |t|
      t.string :state
      t.string :curr_loc
      t.integer :capacity

      t.timestamps
    end
  end
end
