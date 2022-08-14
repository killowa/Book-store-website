class AddDetailsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :password, :string
    add_column :users, :birth_date, :datetime
    add_column :users, :gender, :string, limit: 1
  end
end
