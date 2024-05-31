class AddColumnToContracts < ActiveRecord::Migration[5.2]
  def change
    add_column :contracts, :start_day, :date
  end
end
