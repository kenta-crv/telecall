class AddColumnToContractsSecond < ActiveRecord::Migration[5.2]
  def change
    add_column :contracts, :business, :string
    add_column :contracts, :service, :string
    add_column :contracts, :hope_start, :string
    add_column :contracts, :hope_count, :string
    add_column :contracts, :meeting, :string
    add_column :contracts, :thought, :string
    add_column :contracts, :remarks, :string
  end
end
