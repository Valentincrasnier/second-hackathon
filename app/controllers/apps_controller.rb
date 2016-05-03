class AppsController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def recherche
    @users = User.order(:updated_at).reverse
  end
   
end
