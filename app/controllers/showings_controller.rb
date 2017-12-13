class ShowingsController < ApplicationController
  before_action :set_showing, only: [:show, :edit, :update, :destroy]

  def search
    @search_term = params[:q]
    st = "%#{params[:q]}%"
   # films = Film.where( '(title like ?) OR (filmcast like ?)', st ).select(:id).distinct
   puts 'st'
   #Product.where("lower(name) = ?", name.downcase).first
   
   
    films = Film.where('lower(title) LIKE lower(:search) OR lower(filmcast) LIKE lower(:search) OR lower(plot) LIKE lower(:search)', search: st).select(:id).distinct
    @showings = Showing.where("film_id IN (?)", films)
  end 
  
  # GET /showings
  # GET /showings.json
  def index
    @showings = Showing.all
    
   

  end

  # GET /showings/1
  # GET /showings/1.json
  def show
    
    @lastshowing = Showing.last
    
 #   puts 'lastshowing screen_id: ' + @lastshowing.screen_id.to_s
#    puts 'lastshowing film_id: ' + @lastshowing.film_id.to_s
#    puts 'lastshowing.screen_id ' + @lastshowing.screen_id.to_s
#    puts 'lastshowing.seating ' + @lastshowing.seatallocation.to_s
    
    @thisscreen = Screen.find_by_id(@lastshowing.screen_id)
 #   puts 'thisscreen.seating ' + @thisscreen.seating.to_s
    
    if @lastshowing.seatallocation == "" || @lastshowing.seatallocation.nil?
      
      @thisscreen = Screen.find_by_id(@lastshowing.screen_id)
      
 #     puts 'thisscreen.seating ' + @thisscreen.seating.to_s
      @lastshowing.update_attributes(:seatallocation => @thisscreen.seating)
      @lastshowing.save

    end
    
 #   'A01N A02N A03N A04N B01N B02N B03N B04N C01N C02N C03N C04N D01N D02N D03N D04N E01N E02N E03N E04N'
    
  end

  # GET /showings/new
  def new
    @showing = Showing.new
  end

  # GET /showings/1/edit
  def edit
  end

  # POST /showings
  # POST /showings.json
  def create
    @showing = Showing.new(showing_params)

    respond_to do |format|
      if @showing.save
        format.html { redirect_to @showing, notice: 'Showing was successfully created.' }
        format.json { render :show, status: :created, location: @showing }
      else
        format.html { render :new }
        format.json { render json: @showing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /showings/1
  # PATCH/PUT /showings/1.json
  def update
    respond_to do |format|
      if @showing.update(showing_params)
        format.html { redirect_to @showing, notice: 'Showing was successfully updated.' }
        format.json { render :show, status: :ok, location: @showing }
      else
        format.html { render :edit }
        format.json { render json: @showing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showings/1
  # DELETE /showings/1.json
  def destroy
    @showing.destroy
    respond_to do |format|
      format.html { redirect_to showings_url, notice: 'Showing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_showing
      @showing = Showing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def showing_params
      params.require(:showing).permit(:slot, :price, :screen_id, :film_id, :seatallocation)
    end
end
