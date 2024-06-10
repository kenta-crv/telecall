class AddColumnToContractsThird < ActiveRecord::Migration[5.2]
  def change
    add_column :contracts, :report, :string
  end
end
