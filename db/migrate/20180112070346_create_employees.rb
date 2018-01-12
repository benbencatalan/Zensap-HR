class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :employee_code
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.integer :gender_id
      t.integer :position_id
      t.integer :department_id
      t.integer :employment_type_id

      t.timestamps
    end
  end
end
