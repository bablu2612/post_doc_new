class AddEmailEnquiresToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :email_inq, :string
    add_column :cars, :phone_inq, :string
    add_column :cars, :listing_save, :string
    add_column :cars, :listing_view, :string
  end
end
