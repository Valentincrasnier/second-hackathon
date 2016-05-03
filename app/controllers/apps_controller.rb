class AppsController < ApplicationController
  
  def index
    @users = User.all
  end
  def recherche
    @users = User.all
  end
   
end
