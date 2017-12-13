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

    # now update db to reflect seat being reserved by this session:
    
    @showing = Showing.find_by_id(id)
    replacementshowing = @showing.seatallocation.gsub(seat, seat[0,3]+"R")
    
    @showing.update_attributes(:seatallocation => replacementshowing)
    @showing.save
    
    redirect_to :action => :index
  end

  def clearCart
    
    if !session[:cart] then
      session[:cart] = {}
    end
    cart = session[:cart]
     
    cart.each do |i, showing_seat|
      showingseatarr = showing_seat.split('_')
      showingid = showingseatarr[0]
      seatingid = showingseatarr[1]  
      @showing = Showing.find_by_id(showingid)
      
    #  puts 'seatingid : ' + seatingid
    #  puts 'seatingid[0,3]+"N" : ' + seatingid[0,3] + "N" 
      
    #  replacementshowing2 = 'A01N A02N A03N A04N A05N B01N B02N B03N B04N B05N C01N C02N C03N C04N C05N D01N D02N D03N D04N D05N E01N E02N E03N E04N E05N'
    #  puts 'replacementshowing2          ' + replacementshowing2
    #  puts '@showing.seatallocation      ' + @showing.seatallocation
    #  puts 'seatingid : ' + seatingid.to_s
    #  puts '@showing.seatallocation gsub ' + @showing.seatallocation.gsub(seatingid[0,3]+'R', seatingid[0,3]+'N')
      
      replacementshowing2 = @showing.seatallocation.gsub(seatingid[0,3]+'R', seatingid[0,3]+"N")
      
      @showing.update_attributes(:seatallocation => replacementshowing2)
      @showing.save
      
      #puts 'replacementshowing: ' + replacementshowing
       
       
     # puts '@showing.seatallocation after ' + @showing.seatallocation
       
    end
    
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
  

  def removeseat
    showingid = params[:id]
    seatingid = params[:seat]
    cart = session[:cart]
  
    seat_to_check = showingid.to_s + "_" + seatingid.to_s
    cart.each do |i, showing_seat|
    
      if showing_seat == seat_to_check
          cart.delete i
      end
  
      @showing = Showing.find_by_id(showingid)
      replacementshowing = @showing.seatallocation.gsub(seatingid[0,3]+'R', seatingid[0,3]+"N")
      @showing.update_attributes(:seatallocation => replacementshowing)
      @showing.save
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
      
     # puts 'showingseatarr: ' + showingseatarr
      puts 'showingid: ' + showingid
      puts 'seatingid: ' + seatingid
      
      
      
      replacementshowing = showing.seatallocation.gsub(seatingid[0,3]+'R', seatingid[0,3]+"Y")
      showing.update_attributes(:seatallocation => replacementshowing)
      showing.save
      
      @bookingshowing = @booking.bookingshowings.build(:showing_id => showingid, :filmtitle => film.title, :screenname => screen.screenname, :seat => seatingid[0,3], :price => showing.price)
      @bookingshowing.save
    end
    @bookings = Booking.last
    @bookingshowings = Bookingshowing.where(booking_id: Booking.last)
    session[:cart] = nil

  end  
end
