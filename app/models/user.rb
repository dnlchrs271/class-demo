class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #method that comes with devise gem that tells user all the properties it has
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
       #later in application you can write: user1.posts() method that returns all of user 1's posts  
         has_many :posts
end
