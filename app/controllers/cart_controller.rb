class CartController < ApplicationController
  before_action :authenticate_user!
  
  def add
    # get the Id of the product
    id = params[:id]
    seat = params[:seat]
    # if the cart is already been created, use existing cart else create a blank cart
    if !session[:cart] then
      session[:cart] = {}
    end
    cart = session[:cart]
    
    seat_to_check = id.to_s + "_" + seat.to_s
    lastindex = 0
    
    cart.each do |i, showing_seat|
      if showing_seat == seat_to_check
          cart.delete i
      end
      lastindex = i.to_i
    end
    
    cart[lastindex + 1] = seat_to_check

    redirect_to :action => :index
  end

  def clearCart
    #sets session variable to nil and bring back to index
    session[:cart] = nil
    redirect_to :action => :index
  end 

  def index
    # passes a cart to display
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end  
  end
  
  def remove
    id = params[:id]
    cart = session[:cart]
    cart.delete id
    redirect_to :action => :index
  end
  
  def removeseat
    id = params[:id]
    seat = params[:seat]
    cart = session[:cart]
  
    seat_to_check = id.to_s + "_" + seat.to_s
    cart.each do |i, showing_seat|
    
    if showing_seat == seat_to_check
        cart.delete i
    end
  end
  

    redirect_to :action => :index
  end
  
  def createBooking
    @user = User.find(current_user.id)
    @booking = @user.bookings.build(:bookingdate => DateTime.now, :status => 'Reserved')
    @booking.save
    @cart = session[:cart] || {} # collect all cart
    @cart.each do |id, showing_seat|
      
      showingseatarr = showing_seat.split('_')
      showingid = showingseatarr[0]
      seatingid = showingseatarr[1]

      showing = Showing.find_by_id(showingid)
      screen = Screen.find_by_id(showing.screen_id)
      film = Film.find_by_id(showing.film_id)
      @bookingshowing = @booking.bookingshowings.build(:showing_id => showing.id, :filmtitle => film.title, :screenname => screen.screenname, :seat => seatingid[0,3], :price => showing.price)
      @bookingshowing.save
    end
    @bookings = Booking.last
    @bookingshowings = Bookingshowing.where(booking_id: Booking.last)
    session[:cart] = nil

  end  
end
