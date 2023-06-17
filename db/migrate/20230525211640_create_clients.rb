class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.string :slug
      t.string :tradename
      t.string :description
      t.string :identification
      t.string :logo
      t.jsonb :social, default: {}
      t.string :website
      t.boolean :active
      t.jsonb :colors, default: {}
      t.string :domain
      t.string :banner
      t.references :geolocation, null: true, foreign_key: true

      t.timestamps
    end
  end
end
