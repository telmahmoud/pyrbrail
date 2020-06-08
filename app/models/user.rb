class User < ApplicationRecord
  has_many :alphas
  before_save {self.email = email.downcase}
  validates :username , presence: true , uniqueness: {case_sensitive: false} , length: {minimum: 3 , maximum: 25}
  VALID_EMAIL_REGEX = /\A[a-z0-9\+\-_\.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email , presence: true , format: {with: VALID_EMAIL_REGEX} , uniqueness: {case_sensitive: false} ,
            length: {maximum: 105}
end
