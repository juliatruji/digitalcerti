class CreateCertificates < ActiveRecord::Migration[6.1]
  def change
    create_table :certificates do |t|
      t.string :name
      t.string :description
      t.string :folio
      t.string :record
      t.date :issue_date
      t.date :expiration_date
      t.string :file
      t.integer :category
      t.integer :status, default: 0
      t.references :location, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
