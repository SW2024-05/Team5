class CreateSchools < ActiveRecord::Migration[7.1]
  def change
    create_table :schools do |t|
      t.string :school_name
      t.integer :school_grade

      t.timestamps
    end
  end
end
