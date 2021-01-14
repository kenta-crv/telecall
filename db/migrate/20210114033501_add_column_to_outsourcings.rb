class AddColumnToOutsourcings < ActiveRecord::Migration[5.2]
  def change
    add_column :outsourcings, :one_first_date, :datetime
    add_column :outsourcings, :one_end_date, :datetime
    add_column :outsourcings, :second_first_date, :datetime
    add_column :outsourcings, :second_end_date, :datetime
    add_column :outsourcings, :third_first_date, :datetime
    add_column :outsourcings, :third_end_date, :datetime
  end
end
