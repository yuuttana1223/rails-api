user = User.create!({ name: "yuu", email: "yuu@yuu.com", password: "password" })

Review.create!(
  [
    # 1年春学期
    {
      user_id: user.id, lecture_name: "Web開発入門", teacher_name: "谷口弘師", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "不満", workload: "大変少ない", difficulty: "大変易しい", is_ending_test: false, content: "プロゲートやドットインストールをしたことがある人には簡単すぎて物足りないが、初心者にはちょうどよいかもしれない。模写するだけの課題であったり、教科書を写したりするのが多いので、単位自体は誰でも取れる。最後に課題の点数だけはフィードバックとしてもらえたが、どこが悪いかなどは書かれていない。"
    },
    {
      user_id: user.id, lecture_name: "計算機システム概論1", teacher_name: "鈴木佳代子", lesson_type: "オンデマンド", level_of_satisfaction: "大変不満", workload: "普通", difficulty: "普通", is_ending_test: true, content: "パワーポイントを渡され、基本情報の問題を解いて提出するだけの授業で動画や講義はなし。問題の回答は後から渡されるが解説はなくてフィードバックもなし。テストの対策は基本情報の問題ではないので、パワーポイントをまとめてテスト中に瞬時に見れるようにすると良いかも知れない。"
    },
    {
      user_id: user.id, lecture_name: "プロジェクト演習1", teacher_name: "鬼頭孝輔", lesson_type: "ハイブリッド", level_of_satisfaction: "不満", workload: "普通", difficulty: "易しい", is_ending_test: false, content: "算数の問題をグループで解いたり、資料集めやスライド作成などしたりした。コロナで数少ない交流の授業なので友達をこの授業で作らなければきつくなる。内容自体は役に立つとは思わなかった。ハイブリッドにも関わらず対面で来るのが当然かの言い回しが気になったのと、質問をしても返信が返ってこないことが気になった。",
    },
    {
      user_id: user.id, lecture_name: "Java実習1", teacher_name: "松下浩二", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "大変満足", workload: "普通", difficulty: "普通", is_ending_test: false, content: "課題に対してフィードバックがもらえるので次から改善しようと思えた。再提出期間を設けたり、slackやメールで聞かれても優しく教えるので意欲的な生徒からするととても良い。悪い点は雑談は面白いのだが、そのせいであまり授業の内容が進まないこともあった。授業で習ったこと以外使えないという点は授業以外で勉強している人からすると微妙であった。",
    },
    {
      user_id: user.id, lecture_name: "Java実習1", teacher_name: "松下浩二", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "大変満足", workload: "普通", difficulty: "普通", is_ending_test: false, content: "課題に対してフィードバックがもらえるので次から改善しようと思えた。再提出期間を設けたり、slackやメールで聞かれても優しく教えるので意欲的な生徒からするととても良い。悪い点は雑談は面白いのだが、そのせいであまり授業の内容が進まないこともあった。授業で習ったこと以外使えないという点は授業以外で勉強している人からすると微妙であった。",
    },
    {
      user_id: user.id, lecture_name: "ITパスポート対策演習1", teacher_name: "高田進", lesson_type: "オンデマンド", level_of_satisfaction: "不満", workload: "大変少ない", difficulty: "大変易しい", is_ending_test: true, content: "",
    },
  ]
)