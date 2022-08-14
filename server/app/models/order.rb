class Order < ApplicationRecord
  belongs_to :user
  belongs_to :book
  belongs_to :truck
end
