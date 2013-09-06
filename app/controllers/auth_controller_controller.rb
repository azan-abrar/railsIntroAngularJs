class AuthControllerController < ApplicationController
  
  def signin
    user = login(params[:username], params[:password])
    unless user.blank?
      render json: user.to_json and return
    else
      render json: {:flash => "Invalid username or password"}, status: 500 and return
    end
  end
  
  def signout
    logout
    render json: {:flash => "Invalid username or password"}, status: 500 and return
  end
  
end
