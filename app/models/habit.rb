class Habit < ActiveRecord::Base
  belongs_to :user
  has_many :activity_receipts
end
