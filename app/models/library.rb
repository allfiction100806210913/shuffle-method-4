class Library < ApplicationRecord
  belongs_to :user
  validates :card_type, presence: true
  validates :numbers, presence: true
end