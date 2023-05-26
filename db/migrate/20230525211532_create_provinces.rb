class CreateProvinces < ActiveRecord::Migration[6.1]
  def change
    create_table :provinces do |t|
      t.string :name
      t.string :var_name
      t.references :department, null: true, foreign_key: true

      t.timestamps
    end
  end
end
