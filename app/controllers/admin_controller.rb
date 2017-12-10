class AdminController < ApplicationController
  def adminlogin
        session[:login] = 1
        session[:cart] = nil
        flash[:notice] = "Admin Login sucessfull!!"
        redirect_to :controller => :showings
    end 
    
    def adminlogout
        session[:login] = nil
        session[:cart] = nil
        flash[:notice] = "Admin has successfully logged out!!"
        redirect_to :controller => :showings
    end   

  def screen
  end

  def price
  end

  def film
  end

  def showing
  end

  def user
  end
end
