class AddUrlToCarCompares < ActiveRecord::Migration[6.1]
  def change
    add_column :car_compares, :url, :string
  end
end
