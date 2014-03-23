class PagesController < ApplicationController
  def index
    @user = User.new
  end

  def confirmation
    render 'confirmation'
  end
end
