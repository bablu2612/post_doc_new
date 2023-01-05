class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.string :name
      t.string :amount
      t.string :date
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
