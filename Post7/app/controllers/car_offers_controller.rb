class CarOffersController < ApplicationController
  before_action :set_car_compare, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /car_compares or /car_compares.json
  protect_from_forgery with: :null_session

  def index
    @car_compares = Offer.all
  end

  # GET /car_compares/1 or /car_compares/1.json
  def show
  end

  # GET /car_compares/new
  def new
    @car_compare = Offer.new
  end

  # GET /car_compares/1/edit
  def edit
  end

  # POST /car_compares or /car_compares.json
  def create
    # abort(car_compare_params)
    @car_compare = Offer.new(car_compare_params)

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
    if @car_compare.destroy
      render json: {status:200 , message: "Record was successfully destroyed."}
    else
      render json: {status:404 , message: "Wrong details"}
    end
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_compare
      @car_compare = Offer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car_compare_params
      params.permit(:name, :amount, :date, :car_id)
    end
end
