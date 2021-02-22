class Artist < ApplicationRecord
  belongs_to :category

  validates :nome, :cidade, :social, :pdf, presence: true
  validates :nome, uniqueness: true
end
