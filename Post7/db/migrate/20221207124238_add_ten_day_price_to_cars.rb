class AddTenDayPriceToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :ten_day_price, :string
    add_column :cars, :twenty_day_price, :string
    add_column :cars, :thirty_day_price, :string
  end
end
