class Alpha < ApplicationRecord
  belongs_to :user
  validates :title , presence: true , length: {minimum: 1 , maximum: 76}
  validates :description , presence: true , length: {minimum: 3 , maximum: 76}
  validates :user_id , presence: true
end
