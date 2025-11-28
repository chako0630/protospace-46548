class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
  end
  
  def set_user
    @user = User.find(params[:id])
  end

end