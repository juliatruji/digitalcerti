class CreateStudentCertificates < ActiveRecord::Migration[6.1]
  def change
    create_table :student_certificates do |t|
      t.date :issue_date
      t.date :expiration_date
      t.string :file
      t.references :student, null: false, foreign_key: true
      t.references :certificate, null: false, foreign_key: true
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
