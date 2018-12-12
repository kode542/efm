class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :semester
      t.integer :age
      t.string :phone_number

      t.timestamps
    end
  end
end
