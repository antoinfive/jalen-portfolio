class SessionsController < ApplicationController

  def create
    binding.pry
      admin = Admin.find_by_username(params[:username])
      if admin && admin.authenticate(params[:password])
        session[:admin_id] = admin.id
        redirect_to admin_path(admin), :notice => "Drop, drop the bass, #{admin.username}"
      else
        flash[:notice] = "Invalid username or password"
        render "new"
    end
  end

    def destroy
      session[:user_id] = nil
    end
end
