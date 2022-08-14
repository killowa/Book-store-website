class User < ApplicationRecord
  belongs_to :address

  has_many :orders
  has_many :books, through: :orders
end
