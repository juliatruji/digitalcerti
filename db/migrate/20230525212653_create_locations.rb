class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :logo
      t.string :identification
      t.string :domain
      t.string :description
      t.string :address
      t.references :client, null: false, foreign_key: true
      t.references :geolocation, null: true, foreign_key: true

      t.timestamps
    end
  end
end
