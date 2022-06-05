class CreateRecruits < ActiveRecord::Migration[5.2]
  def change
    create_table :recruits do |t|
      t.string :company
      t.string :name
      t.string :tel
      t.string :email
      t.string :address
      t.string :subject
      t.string :message
      t.timestamps
    end
  end
end
