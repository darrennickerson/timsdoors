class Invoice < ApplicationRecord
  belongs_to :users
  has_many :products
end
