class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:name]
    if session[:name]
      redirect_to "/"
    elsif name && name != ""
      session[:name] = name
    else
      redirect_to "/login"
    end
  end

  def destroy
  end
end
