class UsersController < ApplicationController
  def index
  end

  def create
  end

  def new
    user = User.new
    
    # if params[:goal]
    #   user.goal = params[:goal]
    #   user.save
    # end
    render "basic_info" 
  end

  def basic_info
    @user = User.find_by_id(params[:id]) #|| User.new
    #redirect_to @user
  end

  def update
    @user = User.find(params[:user][:id])
    @user.update_attributes(params[:user])
    EmailCampaignApi.add_or_update_mobility_list(@user) 
  end

  def destroy
  end

  def show
    #binding.pry
    #@user = User.find(params[:id])
    @user = User.find(2)
  end
end
