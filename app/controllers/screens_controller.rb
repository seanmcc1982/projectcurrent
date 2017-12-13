class ScreensController < ApplicationController
    before_action :authenticate_admin!
    before_action :set_screen, only: [:show, :edit, :update, :destroy]

  # GET /screens
  # GET /screens.json
  def index
    @screens = Screen.all
   
   
      
  end

  # GET /screens/1
  # GET /screens/1.json
  
  def show
     @lastscreen = Screen.last
    
    #if @lastscreen.seating.nil? 

    if @lastscreen.seating == "" || @lastscreen.seating.nil?
      
      rows = @lastscreen.rows
      width = @lastscreen.width
      
  #    puts 'rows: ' +  rows.to_s
  #    puts 'width: ' + width.to_s
      
      letterarray = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" 
      seatarr = ""
        i = 0 
        index = 0
        while i < rows do
            j = 1001
            while j < width+1001 do 
              temps = letterarray[i, 1].to_s 
              
      #        puts 'j:' + j.to_s
      #        puts temps
      #        puts '(j).to_s[2,4]  ' + (j).to_s[2,4]
              temps += (j).to_s[2,4]
              
     #         puts temps
              
              temps += 'N '
     #         puts temps
              seatarr[index] = temps
              
              puts 'seatarr[index] ' + seatarr[index]
              puts 'index: ' + index.to_s
              index+=5
              j+=1
              
            end
            i+=1
        end
          
        @lastscreen.update_attributes(:seating => seatarr)
        @lastscreen.save

    end
  end

  # GET /screens/new
  def new
    @screen = Screen.new
  end

  # GET /screens/1/edit
  def edit
  end

  # POST /screens
  # POST /screens.json
  def create
    @screen = Screen.new(screen_params)

    respond_to do |format|
      if @screen.save
        format.html { redirect_to @screen, notice: 'Screen was successfully created.' }
        format.json { render :show, status: :created, location: @screen }
      else
        format.html { render :new }
        format.json { render json: @screen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /screens/1
  # PATCH/PUT /screens/1.json
  def update
    respond_to do |format|
      if @screen.update(screen_params)
        format.html { redirect_to @screen, notice: 'Screen was successfully updated.' }
        format.json { render :show, status: :ok, location: @screen }
      else
        format.html { render :edit }
        format.json { render json: @screen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screens/1
  # DELETE /screens/1.json
  def destroy
    @screen.destroy
    respond_to do |format|
      format.html { redirect_to screens_url, notice: 'Screen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_screen
      @screen = Screen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def screen_params
      params.require(:screen).permit(:screenname, :rows, :width, :seating)
    end
end
