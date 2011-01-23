# -*- coding: utf-8 -*-
class SessionsController < ApplicationController
  skip_before_filter :require_login, :only => [:create, :destroy]
  def create
#    raise request.env["omniauth.auth"].to_yaml 
    auth = request.env["omniauth.auth"]  
    user = User.find_by_provider_and_email(auth["provider"], auth["user_info"]["email"]) # || User.create_with_omniauth(auth)
    if user 
      session[:user_id] = user.id  
      redirect_to root_url, :notice => "Bienvenue!" and return
    end
    redirect_to root_url, :notice => "Je ne vous connais pas!"
  end

  def destroy  
    session[:user_id] = nil  
    redirect_to root_url, :notice => "Déconnecté!"  
  end
  
end
