class BookingshowingsController < ApplicationController
  before_action :set_bookingshowing, only: [:show, :edit, :update, :destroy]

  # GET /bookingshowings
  # GET /bookingshowings.json
  def index
    @bookingshowings = Bookingshowing.all
  end

  # GET /bookingshowings/1
  # GET /bookingshowings/1.json
  def show
  end

  # GET /bookingshowings/new
  def new
    @bookingshowing = Bookingshowing.new
  end

  # GET /bookingshowings/1/edit
  def edit
  end

  # POST /bookingshowings
  # POST /bookingshowings.json
  def create
    @bookingshowing = Bookingshowing.new(bookingshowing_params)

    respond_to do |format|
      if @bookingshowing.save
        format.html { redirect_to @bookingshowing, notice: 'Bookingshowing was successfully created.' }
        format.json { render :show, status: :created, location: @bookingshowing }
      else
        format.html { render :new }
        format.json { render json: @bookingshowing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookingshowings/1
  # PATCH/PUT /bookingshowings/1.json
  def update
    respond_to do |format|
      if @bookingshowing.update(bookingshowing_params)
        format.html { redirect_to @bookingshowing, notice: 'Bookingshowing was successfully updated.' }
        format.json { render :show, status: :ok, location: @bookingshowing }
      else
        format.html { render :edit }
        format.json { render json: @bookingshowing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookingshowings/1
  # DELETE /bookingshowings/1.json
  def destroy
    @bookingshowing.destroy
    respond_to do |format|
      format.html { redirect_to bookingshowings_url, notice: 'Bookingshowing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookingshowing
      @bookingshowing = Bookingshowing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookingshowing_params
      params.require(:bookingshowing).permit(:showing_id, :filmtitle, :screenname, :seat, :price, :booking_id)
    end
end
