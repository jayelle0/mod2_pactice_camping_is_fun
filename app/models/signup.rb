class Signup < ApplicationRecord
  belongs_to :camper
  belongs_to :activity

  validates :camper_id, :activity_id, presence: true
  validates :time, numericality: {greater_than_or_equal_to: 0, less_than: 24}
end
