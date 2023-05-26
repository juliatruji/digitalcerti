class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :identification
      t.string :address

      t.timestamps
    end
  end
end
