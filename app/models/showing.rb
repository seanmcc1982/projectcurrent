class Showing < ApplicationRecord
  belongs_to :screen
  belongs_to :film
  
  def showing_params 
    params.require(:showing).permit(:slot, :price, :screen_id, :film_id) 
  end
  
  has_one:showingseatallocation, dependent: :destroy
end
