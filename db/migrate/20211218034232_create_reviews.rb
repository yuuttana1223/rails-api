class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.string :lecture_name, comment: "講義の名前"
      t.string :teacher_name, comment: "講師の名前"
      t.integer :lesson_type, comment: "授業形式"
      t.integer :level_of_satisfaction, comment: "授業の内容充実度"
      t.integer :workload, comment: "提出物の量"
      t.integer :difficulty, comment: "授業の難しさ"
      t.boolean :is_ending_test, comment: "期末テストがあるかどうか"
      t.text :content, comment: "内容"

      t.timestamps
    end
  end
end
