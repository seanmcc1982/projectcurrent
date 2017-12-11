class StaticPagesController < ApplicationController
  def home
    @showings = Showing.all
    @bookings = Booking.all
    if user_signed_in?  
      @lastbooking = Booking.where(user_id: current_user.id).last
    end
    
  end

  def orderConfirmed
  end
  
  def paid
   
    flash[:notice] = 'Transaction Complete'

    @booking = Booking.last
    @booking.update_attribute(:status , "Paid by User: #{current_user.email}")
    
    session[:cart] = nil
  end  
  
end
