class ChallengesController < ApplicationController
  def new
    @challenge = Challenge.new
    @user = User.find(params[:user_id])
  end

  def create
    @challenge = Challenge.new(description: params[:challenge][:description], author_id: current_user.id, user_id: params[:user_id])
    if @challenge.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @challenges = Challenge.all
    @users = User.all
  end

end
