class Booking < ApplicationRecord
  belongs_to :user
  
  def booking_params 
    params.require(:booking).permit(:bookingdate, :user_id, :status) 
  end
  
  has_many:bookingshowings, dependent: :destroy
  
end
