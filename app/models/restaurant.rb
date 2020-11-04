class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :address, inclusion: CATEGORIES

  CATEGORIES = %[chinese italian japanese french belgian]
end
