class UserAnimals < ActiveRecord::Migration
  def change
    create_table :user_animals do |t|
      t.integer :user_id, null: false
      t.integer :animal_id, null: false
    end
  end
end
