class CreateSchools < ActiveRecord::Migration[7.1]
  def change
    create_table :schools do |t|
      t.integer :school_id
      t.string :school_name
      t.string :school_grade

      t.timestamps
    end
  end
end
