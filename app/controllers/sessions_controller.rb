class SessionsController < ApplicationController
  def new

  end

  def create
    session[:name] = params[:name]
    !params[:name] || params[:name].empty? ? redirect_to '/login' : redirect_to '/'
  end

  def destroy
    session.delete :name
  end
end
