class RemoveColumnsFromStudent < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :name, :string
    remove_column :students, :lastname, :string
    remove_column :students, :telephone, :string
  end
end
