class StaticPagesController < ApplicationController
  def home
    @showings = Showing.all
  end

  def orderConfirmed
  end
  
  def paid
    # Here you could also cear the cart
    
    flash[:notice] = 'Transaction Complete'

    @booking = Booking.last
    @booking.update_attribute(:status , "Paid by User: #{current_user.email}")
    
    session[:cart] = nil
  end  
  
end
