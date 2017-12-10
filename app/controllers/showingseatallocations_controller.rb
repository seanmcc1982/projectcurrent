class ShowingseatallocationsController < ApplicationController
  before_action :set_showingseatallocation, only: [:show, :edit, :update, :destroy]

  # GET /showingseatallocations
  # GET /showingseatallocations.json
  def index
    @showingseatallocations = Showingseatallocation.all
  end

  # GET /showingseatallocations/1
  # GET /showingseatallocations/1.json
  def show
  end

  # GET /showingseatallocations/new
  def new
    @showingseatallocation = Showingseatallocation.new
  end

  # GET /showingseatallocations/1/edit
  def edit
  end

  # POST /showingseatallocations
  # POST /showingseatallocations.json
  def create
    @showingseatallocation = Showingseatallocation.new(showingseatallocation_params)

    respond_to do |format|
      if @showingseatallocation.save
        format.html { redirect_to @showingseatallocation, notice: 'Showingseatallocation was successfully created.' }
        format.json { render :show, status: :created, location: @showingseatallocation }
      else
        format.html { render :new }
        format.json { render json: @showingseatallocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /showingseatallocations/1
  # PATCH/PUT /showingseatallocations/1.json
  def update
    respond_to do |format|
      if @showingseatallocation.update(showingseatallocation_params)
        format.html { redirect_to @showingseatallocation, notice: 'Showingseatallocation was successfully updated.' }
        format.json { render :show, status: :ok, location: @showingseatallocation }
      else
        format.html { render :edit }
        format.json { render json: @showingseatallocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showingseatallocations/1
  # DELETE /showingseatallocations/1.json
  def destroy
    @showingseatallocation.destroy
    respond_to do |format|
      format.html { redirect_to showingseatallocations_url, notice: 'Showingseatallocation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_showingseatallocation
      @showingseatallocation = Showingseatallocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def showingseatallocation_params
      params.require(:showingseatallocation).permit(:seatallocation, :rows, :width, :showing_id)
    end
end
