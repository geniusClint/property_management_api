class CreateProperties < ActiveRecord::Migration[7.1]
  def change
    create_table :properties do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :postal_code
      t.decimal :rent_amount
      t.integer :number_of_bedrooms
      t.integer :number_of_bathrooms
      t.references :owner, null: false, foreign_key: true
      t.references :renter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
