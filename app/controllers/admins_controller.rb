class AdminsController < ApplicationController
  before_action :authorize, only: [:update, :destroy, :edit]

  def show
    @admin = Admin.find(params[:id])
  end
  
  def edit
    admin = Admin.find(params[:id])
  end

  private
  def admin_params
    params.require(:admin).permit(:username, :password, :password_confirmation)
  end
end
