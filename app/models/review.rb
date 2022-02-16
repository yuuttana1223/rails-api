class Review < ApplicationRecord
  belongs_to :user

  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :favorites, dependent: :destroy

  enum lesson_type: { "対面": 0, "リアルタイムオンライン": 1, "オンデマンド": 2, "ハイブリッド": 3 }, _prefix: true
  enum level_of_satisfaction: { "大変不満": 0, "不満": 1, "普通": 2, "満足": 3, "大変満足": 4 }, _prefix: true
  enum workload: { "大変少ない": 0, "少ない": 1, "普通": 2, "多い": 3, "大変多い": 4 }, _prefix: true
  enum difficulty: { "大変易しい": 0, "易しい": 1, "普通": 2, "難しい": 3, "大変難しい": 4 }, _prefix: true

  validates :lecture_name, length: { in: 2..25 }
  validates :teacher_name, length: { in: 2..25 }
  validates :lesson_type, presence: true
  validates :level_of_satisfaction, presence: true
  validates :workload, presence: true
  validates :difficulty, presence: true
  validates :is_ending_test, inclusion: { in: [true, false] }
  validates :content, length: { in: 1..500 }

  scope :add_username, -> { joins(:user).select("reviews.*, users.name AS username") }
end
