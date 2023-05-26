class CreateDistricts < ActiveRecord::Migration[6.1]
  def change
    create_table :districts do |t|
      t.string :name
      t.string :var_name
      t.references :province, null: true, foreign_key: true

      t.timestamps
    end
  end
end
