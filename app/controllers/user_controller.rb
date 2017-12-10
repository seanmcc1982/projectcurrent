class UserController < ApplicationController
    def login
    end
    
    def userlogin
        session[:login] = 1
        session[:cart] = nil
        flash[:notice] = "User Login sucessfull!!"
        redirect_to :controller => :showings
    end 
    
    def userlogout
        session[:login] = nil
        session[:cart] = nil
        flash[:notice] = "You have been successfully logged out!!"
        redirect_to :controller => :showings
    end    
    
end
