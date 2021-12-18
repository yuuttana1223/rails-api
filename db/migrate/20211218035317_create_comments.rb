class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true
      t.text :body, comment: "授業評価に対するコメント"

      t.timestamps
    end
  end
end
