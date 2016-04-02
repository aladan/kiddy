class SessionsController < ApplicationController

  def create
    @user = Doctor.find_by_email(params[:session][:email]) || Patient.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to "/#{@user.class.to_s.downcase.pluralize}/#{@user.id}"
    else
      redirect_to '/login'
    end 
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
