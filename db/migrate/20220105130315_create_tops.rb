class CreateTops < ActiveRecord::Migration[5.2]
  def change
    create_table :tops do |t|
      t.string :company
      t.string :name
      t.string :tel
      t.string :email
      t.string :service
      t.timestamps
    end
  end
end
