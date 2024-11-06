class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.integer :student_id
      t.integer :school_id
      t.string :student_name
      t.integer :product_id
      t.integer :fitting_id

      t.timestamps
    end
  end
end
