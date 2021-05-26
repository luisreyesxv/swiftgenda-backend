class User < ApplicationRecord
  include DeviseTokenAuth::Concerns::User
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


    has_many :campaigns




    def self.create_user_for_google(data)                  
      User.where(uid: data["email"]).first_or_initialize.tap do |user| 
          user.name ||= data["name"]       
          user.provider="google_oauth2"
          user.uid= data["email"]
          user.email= data["email"]
          user.password=Devise.friendly_token[0,20]
          user.password_confirmation= user.password
          user.save!
        end
    end  
end
