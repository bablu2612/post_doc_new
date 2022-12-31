class CarsController < ApplicationController
  before_action :set_car, only: %i[ show edit update destroy ]
  protect_from_forgery with: :null_session

  # GET /cars or /cars.json
  def index
    @cars = Car.all
  end

  # GET /cars/1 or /cars/1.json
  def show
  end

  # GET /cars/new
  def new
    @car = Car.new
   
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars or /cars.json
  def create
    @car = Car.new(car_params)
    if @car.save
      render json: {data: @car}
    end
    # respond_to do |format|
    #   if @car.save
    #     format.html { redirect_to cars_path, notice: "Car was successfully created." }
    #     format.json { render :show, status: :created, location: @car }

    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @car.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /cars/1 or /cars/1.json
  def update

    if @car.update(car_params)
      render json: {data: @car}

    end
    # respond_to do |format|
    #   if @car.update(car_params)
    #     format.html { redirect_to car_url(@car), notice: "Car was successfully updated." }
    #     format.json { render :show, status: :ok, location: @car }
    #   else
    #     format.html { render :edit, status: :unprocessable_entity }
    #     format.json { render json: @car.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /cars/1 or /cars/1.json
  def destroy
    @car.destroy

    respond_to do |format|
      format.html { redirect_to cars_url, notice: "Car was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car_params
      params.require(:car).permit(:name, :phone, :model, :year, :make, :body, :vin, :miles, :zipcode, :askprice,:ten_day_price,:twenty_day_price,:thirty_day_price,:email_inq,:phone_inq,:listing_save,:listing_view)
    end
end
