class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.string :lecture_name, comment: "講義の名前"
      t.string :teature_name, comment: "講師の名前"
      t.string :lesson_type, comment: "授業形式(対面・オンライン・ハイブリッド・オンデマンド)"
      t.string :adequacy, comment: "授業の内容充実度"
      t.string :submission_quantity, comment: "提出物の量"
      t.text :content, comment: "内容(感想など)"

      t.timestamps
    end
  end
end
