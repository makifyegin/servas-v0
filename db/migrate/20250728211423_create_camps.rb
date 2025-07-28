class CreateCamps < ActiveRecord::Migration[8.0]
  def change
    create_table :camps do |t|
      t.string :name
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.integer :elevation
      t.text :description
      t.text :facilities
      t.boolean :parking_available
      t.boolean :permit_required
      t.integer :max_stay

      t.timestamps
    end
  end
end
