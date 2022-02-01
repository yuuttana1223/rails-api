user1 = User.create({ name: "山田太郎", email: "test1@test.com", password: "password", password_confirmation: "password" })
user2 = User.create({ name: "田中太郎", email: "test2@test.com", password: "password", password_confirmation: "password" })
user3 = User.create({ name: "川口翔", email: "test3@test.com", password: "password", password_confirmation: "password" })

review1 = Review.create({ user_id: user1.id, lecture_name: "ネットワークプログラミング", teacher_name: "前納一希", lesson_type: "リアルタイムオンライン", adequacy: "満足", submission_quantity: "やや多い", difficulty: "難しい", is_ending_test: true, content: "実践的でとても良かった。HTML・CSS・JSは触れる前提の授業なので、できない人はやめたほうが良い。" })
review2 = Review.create({ user_id: user2.id, lecture_name: "Java実習１", teacher_name: "松下浩二", lesson_type: "リアルタイムオンライン", adequacy: "満足", submission_quantity: "やや多い", difficulty: "やや難しい", is_ending_test: true, content: "フィードバックをくれてよかったです。" })
review3 = Review.create({ user_id: user3.id, lecture_name: "線形代数基礎", teacher_name: "英保茂", lesson_type: "オンデマンド", adequacy: "普通", submission_quantity: "やや少ない", difficulty: "やや難しい", is_ending_test: true, content: "数学は嫌いな人はやめたほうが良い。" })
Comment.create({ user_id: user1.id, review_id: review1.id, body: "それは違うと思う。" })
Like.create({ user_id: user1.id, review_id: review1.id })
