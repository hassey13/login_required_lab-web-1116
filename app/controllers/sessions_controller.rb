class SessionsController < ApplicationController

  def new
  end

  def create
    unless params[:name].nil? || params[:name] == ""
      session[:name] = params[:name]
      redirect_to controller: 'secrets', action: 'show'
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to controller: 'sessions', action: 'new'
  end

end
