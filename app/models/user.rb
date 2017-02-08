class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :comments
   has_many :followers
   has_many :posts
   has_many :activities    
   has_many :events  


   has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
   validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

   def followers
   	followers = Follower.where(following: id)
   	users = []
   	followers.each do |follower|
   		users << User.find(follower.follower)	
   end
   users
end
end
