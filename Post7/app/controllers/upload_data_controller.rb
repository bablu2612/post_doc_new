class UploadDataController < ApplicationController
  before_action :set_car, only: %i[ destroy ]
  protect_from_forgery with: :null_session

  # GET /cars or /cars.json

  before_action do
    ActiveStorage::Current.host = request.base_url
  end
def index 
    @secretMenuItems = UploadDatum.all
    images = []
    @secretMenuItems.each do |item|
      
       imageData= item.images.map{|val| {"#{val.name}": val.url } }
        data={data: item,images: imageData}
        images << data

    end
    render json: {items: images}.to_json
end 


 

  # GET /cars/1 or /cars/1.json
  def show
  end


  # POST /cars or /cars.json
  def create


    # render json: {data: params}


    @upload_data = UploadDatum.new(upload_datas)
    # @upload_data.images.attach(params[:images])

    if @upload_data.save
      render json: {status: 200,message: "data save successfully","params": params}
    end
    
  end

  # PATCH/PUT /cars/1 or /cars/1.json
  def update

    if @upload_data.update(upload_datas)
      render json: {data: @upload_data}

    end
    
  end

  # DELETE /cars/1 or /cars/1.json
  def destroy
    @upload_data.destroy

    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @upload_data = UploadDatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def upload_datas
      params.permit(:name, :phone, :email, :description,:images => [])
    end
end
