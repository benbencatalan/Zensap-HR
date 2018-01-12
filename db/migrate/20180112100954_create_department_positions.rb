class CreateDepartmentPositions < ActiveRecord::Migration[5.1]
  def change
    create_table :department_positions do |t|
      t.integer :department_id
      t.integer :position_id
      t.text :decription

      t.timestamps
    end
  end
end
