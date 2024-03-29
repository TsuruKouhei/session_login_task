class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password_digest, presence: true, length: { minimum: 6 }, uniqueness: true
  before_validation { email.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  has_many :tasks, dependent: :destroy
  
  #has_many :tasks, through: :tasks_users
end
