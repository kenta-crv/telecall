class AddColumnToRecruits < ActiveRecord::Migration[5.2]
  def change
    add_column :recruits, :one_first_date, :datetime
    add_column :recruits, :one_end_date, :datetime
    add_column :recruits, :second_first_date, :datetime
    add_column :recruits, :second_end_date, :datetime
    add_column :recruits, :third_first_date, :datetime
    add_column :recruits, :third_end_date, :datetime
  end
end
