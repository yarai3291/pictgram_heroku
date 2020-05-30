class User < ApplicationRecord
 validates :name, presence: true, length: { maximum:15 }
 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
 has_secure_password
 VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,100}+\z/i
 validates :password, format: { with: VALID_PASSWORD_REGEX }, presence: true, length: { minimum: 8, maximum:32 }
 validates :password_confirmation, presence: true
 has_many :topics
 
end
