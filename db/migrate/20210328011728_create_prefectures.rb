class CreatePrefectures < ActiveRecord::Migration[5.2]
  def change
    create_table :prefectures do |t|
      t.string :title
      t.string :area
      t.string :salary
      t.string :time
      t.string :week
      t.string :contract
      t.string :price
      t.timestamps
    end
  end
end
