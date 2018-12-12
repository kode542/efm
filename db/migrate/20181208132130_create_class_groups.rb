class CreateClassGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :class_groups do |t|
      t.string :name
      t.string :level
      t.integer :capacity
      t.string :type
      t.integer :enrolled

      t.timestamps
    end
  end
end
