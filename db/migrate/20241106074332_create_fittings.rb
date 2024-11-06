class CreateFittings < ActiveRecord::Migration[7.1]
  def change
    create_table :fittings do |t|
      t.integer :fitting_id
      t.integer :height
      t.integer :weight
      t.integer :neck_round
      t.integer :shoulder_width
      t.integer :chest_size
      t.integer :sleeve_length
      t.integer :west
      t.integer :hip
      t.integer :foot_length

      t.timestamps
    end
  end
end
