json.extract! car, :id, :name, :phone, :model, :year, :make, :body, :vin, :miles, :zipcode, :askprice, :created_at, :updated_at
json.url car_url(car, format: :json)
