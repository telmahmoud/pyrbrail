class Alpha < ApplicationRecord
  validates :title , presence: true , length: {minimum: 1 , maximum: 76}
  validates :description , presence: true , length: {minimum: 3 , maximum: 76}
end
