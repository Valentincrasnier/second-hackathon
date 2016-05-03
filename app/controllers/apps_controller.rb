class AppsController < ApplicationController
  def index
  end

  def create
  	user = current_user
  	if user == 1
  		redirect_to root_index
  	else
  		render :new
  	end
  end

end
