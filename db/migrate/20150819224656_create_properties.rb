class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :street
      t.string :suite
      t.string :city
      t.string :zip
      t.string :sqft
      t.string :rent
      t.integer :room
      t.string :bathroom
      t.boolean :pet_allowed
      t.string :features, array: true
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
