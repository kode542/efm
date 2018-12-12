class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.integer :capacity
      t.string :level

      t.timestamps
    end
  end
end
