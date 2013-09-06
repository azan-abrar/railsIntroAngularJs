class User < ActiveRecord::Base
  authenticates_with_sorcery!
  # attr_accessible :title, :body
  
  attr_accessible :username, :email, :password
  
end
