class AddColumnToTops < ActiveRecord::Migration[5.2]
  def change
    add_column :tops, :co, :string
  end
end
