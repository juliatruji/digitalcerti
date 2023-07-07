class CreateCertificates < ActiveRecord::Migration[6.1]
  def change
    create_table :certificates do |t|
      t.string :name
      t.string :folio
      t.string :record
      t.string :description
      t.references :location, null: false, foreign_key: true
      t.references :certificate_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
