class AddColumnToWorkers < ActiveRecord::Migration[5.2]
  def change
    add_column :workers, :emergency_tel, :string
    add_column :workers, :emergency_name, :string
    add_column :workers, :emergency_pattern, :string
  end
end
