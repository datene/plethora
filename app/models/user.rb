class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  acts_as_token_authenticatable
  

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
