class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :status #募集可否
      t.string :occupation #職種
      t.string :chachcopy #キャッチコピー
      t.string :category #カテゴリー
      t.string :location #勤務地
      t.string :employment #雇用形態
      t.string :salary_low #給料下限
      t.string :salary_high #給料上限
      t.string :salary_category #給料種別
      t.string :work_content #仕事内容
      t.string :work_appeal #アピールポイント
      t.string :work_demand #求める人材
      t.string :work_time #曜日・時間
      t.string :work_vacation #休暇・休日
      t.string :work_location #勤務地
      t.string :work_access #アクセス
      t.string :work_treatment #待遇・福利厚生
      t.string :work_other #その他
      t.string :tag_1 #タグ
      t.string :tag_2 #タグ
      t.timestamps
    end
  end
end
