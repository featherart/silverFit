class UsersController < ApplicationController
  def index
  end

  def create
  end

  def new
    user = User.new
    if params[:goal]
      user.goal = params[:goal]
      user.save
    end
    render "/users/basic_info"
  end

  def destroy
  end

  def show
  end
end
