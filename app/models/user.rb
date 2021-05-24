class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


    has_many :campaigns
    has_many :o_auths




    def self.create_user_for_google(data)                  
      OAuth.where(uid: data[:email]).first_or_initialize.tap do |oauth|
          user = oauth.user ||= User.new()
        
          oauth.provider="google_oauth2"
          oauth.uid= data[:email]
          user.email= data[:email]
          user.password=Devise.friendly_token[0,20]
          user.password_confirmation= user.password
          user.save! && oauth.save!
        end
    end  
end
