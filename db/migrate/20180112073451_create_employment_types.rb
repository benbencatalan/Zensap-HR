class CreateEmploymentTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :employment_types do |t|
      t.string :name
      t.text :decription

      t.timestamps
    end
  end
end
