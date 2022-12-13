class CarComparesController < ApplicationController
  before_action :set_car_compare, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /car_compares or /car_compares.json
  protect_from_forgery with: :null_session

  def index
    @car_compares = CarCompare.all
  end

  # GET /car_compares/1 or /car_compares/1.json
  def show
  end

  # GET /car_compares/new
  def new
    @car_compare = CarCompare.new
  end

  # GET /car_compares/1/edit
  def edit
  end

  # POST /car_compares or /car_compares.json
  def create
    # abort(car_compare_params)
    @car_compare = CarCompare.new(car_compare_params)
    @car_compare.image.attach(car_compare_params['image'])

    if @car_compare.save
      render json: {data: @car_compare}
    end

    # respond_to do |format|
    #   if @car_compare.save
    #     format.html { redirect_to new_car_car_compare_url(car_compare_params['car_id']), notice: "Car compare was successfully created." }
    #     format.json { render :show, status: :created, location: @car_compare }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @car_compare.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /car_compares/1 or /car_compares/1.json
  def update

    if @car_compare.update(car_compare_params)
      render json: {data: @car_compare}
    end


    # respond_to do |format|
    #   if @car_compare.update(car_compare_params)
    #     format.html { redirect_to car_car_compares_path(car_compare_params['car_id']), notice: "Car compare was successfully updated." }
    #     format.json { render :show, status: :ok, location: @car_compare }
    #   else
    #     format.html { render :edit, status: :unprocessable_entity }
    #     format.json { render json: @car_compare.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /car_compares/1 or /car_compares/1.json
  def destroy
    @car_compare.destroy

    respond_to do |format|
      format.html { redirect_to car_compares_url, notice: "Car compare was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_compare
      @car_compare = CarCompare.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car_compare_params
      params.permit(:days, :price, :Mileage, :car_id,:image,:url)
    end
end
