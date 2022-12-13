class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :phone
      t.string :model
      t.string :year
      t.string :make
      t.text :body
      t.string :vin
      t.string :miles
      t.string :zipcode
      t.string :askprice

      t.timestamps
    end
  end
end
