class Task < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  belongs_to :user
  #has_many :users, through: :tasks_users
end
