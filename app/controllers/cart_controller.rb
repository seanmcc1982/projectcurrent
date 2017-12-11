class CartController < ApplicationController
  before_action :authenticate_user!
  
  def add
    # get the Id of the product
    id = params[:id]
    seat = params[:seat]
      
    # if the cart is already been created, use existing cart else create a blank cart
    if session[:cart] then
      cart = session[:cart]
      seat = session[:seat]
    else
      session[:cart] = {}
      cart = session[:cart]
      seat = session[:seat]
    end
    cart[id] = id
    seat[id] = seat
    redirect_to :action => :index
  end


  def clearCart
    #sets session variable to nil and bring back to index
    session[:cart] = nil
    session[:seat] = nil
    redirect_to :action => :index
  end 

  def index
    # passes a cart to display
    if session[:cart] then
      @cart = session[:cart]
      @seat = session[:seat]
    else
      @cart = {}
      @seat = {}
    end  
  end
  
  # type from here in class
  
  def remove
    id = params[:id]
    cart = session[:cart]
    seat = session[:seat]
    cart.delete id
    seat.delete id
    redirect_to :action => :index
  end
  
  def createBooking
    @user = User.find(current_user.id)
    @booking = @user.bookings.build(:bookingdate => DateTime.now, :status => 'Reserved')
    @booking.save
    @cart = session[:cart] || {} # collect all cart
    @cart.each do | id |
      seat = @seat.find_by_id(id)
      showing = Showing.find_by_id(id)
      screen = Screen.find_by_id(showing.screen_id)
      film = Film.find_by_id(showing.film_id)
      @bookingshowing = @booking.bookingshowings.build(:showing_id => showing.id, :filmtitle => film.title, :screenname => screen.screenname, :seat => seat, :price => showing.price)
      @bookingshowing.save
    end
    @bookings = Booking.last
    @bookingshowings = Bookingshowing.where(booking_id: Booking.last)
    session[:cart] = nil
    session[:seat] = nil
  end  
end
