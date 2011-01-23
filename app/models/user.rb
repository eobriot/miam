class User < ActiveRecord::Base
  has_many :messages, :dependent => :destroy
  def self.create_with_omniauth(auth)  
    create! do |user|  
      user.provider = auth["provider"]  
      user.email = auth["user_info"]["email"]  
      user.name = auth["user_info"]["name"]  
    end  
  end  
end
