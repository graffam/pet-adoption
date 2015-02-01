class CreateEmployeeAnimals < ActiveRecord::Migration
  def change
    create_table :employee_animals do |t|
      t.integer :employee_id, null: false
      t.integer :animal_id, null: false
    end
  end
end
