class Category < ApplicationRecord
  has_many :artists

  validates :nome, :icon, presence: true
  validates :nome, uniqueness: true
end
