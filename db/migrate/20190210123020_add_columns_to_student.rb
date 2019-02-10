class AddColumnsToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :name, :string
    add_column :students, :lastname, :string
    add_column :students, :address, :string
    add_column :students, :telephone, :string
  end
end
