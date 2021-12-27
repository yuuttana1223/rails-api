for i in 1..25
  user = User.create({ name: "test_#{i}", email: "test#{i}@test.com", password: "password", password_confirmation: "password" })
  for j in 1..3
    review = Review.create({ user_id: user.id, lecture_name: "プロ演#{i}]#{j}", teacher_name: "前納", lesson_type: "対面", adequacy: "満足", submission_quantity: "多い", difficulty: "難しい", content: "良かったよー" })
    Comment.create({ user_id: user.id, review_id: review.id, body: "body_#{i}_#{j}" })
  end
end

# Review.create!({ user_id: 1, lecture_name: "プロ演1", teacher_name: "前納", lesson_type: "対面", adequacy: "満足", submission_quantity: "多い", difficulty: "難しい", content: "良かったよー" })
# Review.create!({ user_id: 1, lecture_name: "プロ演2", teacher_name: "前納", lesson_type: "対面", adequacy: "満足", submission_quantity: "多い", difficulty: "難しい", content: "良かったよー" })
