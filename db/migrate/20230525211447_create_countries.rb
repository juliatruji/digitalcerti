class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :code
      t.string :iso
      t.string :var_name
      t.string :code_phone
      t.string :language
      t.string :capital

      t.timestamps
    end
  end
end
