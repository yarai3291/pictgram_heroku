class User < ApplicationRecord
 validates :name, presence: true
 validates :email, presence: true
 validates :password, presence: true
 
 has_secure_password
 
 has_many :topics
 #def topics
  #Topic.where(user_id: self.id) 
 #end
 has_many :favorites
 has_many :comments
 has_many :favorite_topics, through: :favorites, source: 'topic'
end