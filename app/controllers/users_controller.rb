class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def edit
  end

  def show
  end

  def index
  	@users = User.all
  end
end
