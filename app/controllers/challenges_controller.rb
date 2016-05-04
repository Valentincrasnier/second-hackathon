class ChallengesController < ApplicationController
  def new
    @challenge = Challenge.new
    @user = User.find(params[:id])
  end

  def create
    @challenge = Challenge.new(description: params[:challenge][:description], author_id: current_user.id, user_id: params[:id])
    if @challenge.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @user = User.find(params[:id])
    @challenges = Challenge.where(user_id: params[:id])
  end

  def delete
    @challenge = Challenge.find(params[:challId])
    @challenge.destroy
    redirect_to root_path
  end
end
