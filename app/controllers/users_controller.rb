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
    render "/users/basic_info"
  end

  def basic_info
    @user = User.find_by_id(params[:id]) || User.new
  end

  def update
    @user = User.find(params[:user][:id])
    @user.update_attributes(params[:user])
    EmailCampaignApi.add_or_update_mobility_list(@user) 
  end

  def destroy
  end

  def show
  end
end
