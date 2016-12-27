class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :house_number
      t.string :address1
      t.string :address2
      t.string :zipcode
      t.string :state_abbreviation
      t.datetime :start
      t.datetime :end
      t.integer :longitude
      t.integer :latitude
      t.text :description

      t.timestamps null: false
    end
  end
end
