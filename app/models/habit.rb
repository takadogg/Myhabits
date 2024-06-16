class Habit < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :evaluation

   validates :habit, presence: true

   validates :evaluation_id, numericality: { other_than: 1 , message: "can't be blank"} 
end
