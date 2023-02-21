class AddColumnToTop < ActiveRecord::Migration[5.2]
  def change
    add_column :tops, :check, :string
  end
end
