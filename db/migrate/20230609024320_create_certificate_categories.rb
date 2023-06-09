class CreateCertificateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :certificate_categories do |t|
      t.string :name
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
