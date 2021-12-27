class Review < ApplicationRecord
  belongs_to :user

  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :lecture_name, length: { in: 2..25 }
  validates :teacher_name, length: { in: 2..25 }
  validates :lesson_type, inclusion: { in: %w(リアルタイムオンライン 対面 オンデマンド ハイブリッド) }
  validates :adequacy, inclusion: { in: %w(満足 やや満足 普通 やや不満 不満) }
  validates :submission_quantity, inclusion: { in: %w(多い やや多い 普通 やや少ない 少ない) }
  validates :difficulty, inclusion: { in: %w(難しい やや難しい 普通 やや易しい 易しい) }
  validates :content, length: { in: 1..500 }
end
