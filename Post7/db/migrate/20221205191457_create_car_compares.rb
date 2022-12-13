class CreateCarCompares < ActiveRecord::Migration[6.1]
  def change
    create_table :car_compares do |t|
      t.string :days
      t.string :price
      t.string :Mileage
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
