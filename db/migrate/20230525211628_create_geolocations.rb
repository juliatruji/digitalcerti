class CreateGeolocations < ActiveRecord::Migration[6.1]
  def change
    create_table :geolocations do |t|
      t.references :department, null: false, foreign_key: true
      t.references :province, null: true, foreign_key: true
      t.references :district, null: true, foreign_key: true
      t.references :country, null: true, foreign_key: true

      t.timestamps
    end
  end
end
