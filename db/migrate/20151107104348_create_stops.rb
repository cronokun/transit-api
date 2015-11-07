class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.integer :latitude
      t.integer :longitude
      t.belongs_to :place, index: true

      t.timestamps null: false
    end
  end
end
