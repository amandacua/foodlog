class EntersController < ApplicationController
  before_action :set_enter, only: [:show, :edit, :update, :destroy]

  # GET /enters
  # GET /enters.json
  def index
    @enters = Enter.all
  end

  # GET /enters/1
  # GET /enters/1.json
  def show
  end

  # GET /enters/new
  def new
    @enter = Enter.new
  end

  # GET /enters/1/edit
  def edit
  end

  # POST /enters
  # POST /enters.json
  def create
    @enter = Enter.new(enter_params)

    respond_to do |format|
      if @enter.save
        format.html { redirect_to @enter, notice: 'Enter was successfully created.' }
        format.json { render :show, status: :created, location: @enter }
      else
        format.html { render :new }
        format.json { render json: @enter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enters/1
  # PATCH/PUT /enters/1.json
  def update
    respond_to do |format|
      if @enter.update(enter_params)
        format.html { redirect_to @enter, notice: 'Enter was successfully updated.' }
        format.json { render :show, status: :ok, location: @enter }
      else
        format.html { render :edit }
        format.json { render json: @enter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enters/1
  # DELETE /enters/1.json
  def destroy
    @enter.destroy
    respond_to do |format|
      format.html { redirect_to enters_url, notice: 'Enter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enter
      @enter = Enter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def enter_params
      params.require(:enter).permit(:meal_type, :calories, :proteins, :carbohydrates, :fats)
    end
end
