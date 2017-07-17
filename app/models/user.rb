class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence: true
  validates :email, presence: true

  has_many :posts

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
