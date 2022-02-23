for i in 1..100 do
  Review.create!({ user_id: 1, lecture_name: "講義#{i}", teacher_name: "講師#{i}", lesson_type: "オンデマンド", level_of_satisfaction: "普通", workload: "少ない", difficulty: "難しい", is_ending_test: true, content: "内容。内容。内容。内容。内容。内容。内容。内容。内容。内容。内容。内容。内容。内容。内容。内容。内容。#{i}" })
end