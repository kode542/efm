class AddStudentIdToClassGroup < ActiveRecord::Migration[5.1]
  def change
    add_column :class_groups, :student_id, :integer
  end
end
