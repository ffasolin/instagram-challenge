class User < ApplicationRecord
  # validates :name, presence: true, length: { maximum: 30 }
  # validates :username, presence: true, length: { maximum: 10 },
  #                      uniqueness: true
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, length: { maximum: 100 },
  #                   format: { with: VALID_EMAIL_REGEX },
  #                   uniqueness: { case_sensitive: false }
  # validates :password, presence: true, length: { minimum: 8, maximum: 8 }
end
