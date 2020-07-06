class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :title #タイトル
      t.string :file #ファイル
      t.string :keyword #キーワード
      t.string :description #説明
      t.text :body #本文
      t.timestamps
    end
  end
end
