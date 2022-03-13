user = User.create!({ name: "yuu", email: "yuu@yuu.com", password: "password" })

Review.create!(
  [
    {
      user_id: user.id, lecture_name: "Java実習1", teacher_name: "松下浩二", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "大変満足", workload: "多い", difficulty: "普通", is_ending_test: false, content: "課題に対してフィードバックがもらえるので次から改善しようと思えた。再提出期間を設けたり、slackやメールで聞かれても優しく教えるので意欲的な生徒からするととても良い。悪い点は雑談は面白いのだが、そのせいであまり授業の内容が進まないこともあった。授業で習ったこと以外使えないという点は授業以外で勉強している人からすると微妙であった。参考書はパワポに全部書いてあるので買う必要はない。",
    },
    {
      user_id: user.id, lecture_name: "Java実習2", teacher_name: "松下浩二", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "満足", workload: "多い", difficulty: "難しい", is_ending_test: false, content: "課題に対してフィードバックがもらえるので次から改善しようと思えた。再提出期間を設けたり、slackやメールで聞かれても優しく教えるので意欲的な生徒からするととても良い。悪い点は雑談は面白いのだが、そのせいであまり授業の内容が進まないこともあった。授業で習ったこと以外使えないという点は授業以外で勉強している人からすると微妙であった。課題にヒントが結構あるので1から作る能力はあまり身につかないと思う。参考書はパワポに全部書いてあるので買う必要はない。",
    },
    {
      user_id: user.id, lecture_name: "J検対策演習2", teacher_name: "酒井辰也", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "大変満足", workload: "大変少ない", difficulty: "普通", is_ending_test: true, content: "課題などは全くなく、授業中に問題を解いて答え合わせがあるので授業外に時間を取られることはない。ITパスポート試験や基本情報にも役に立ち、J検に合格すると単位が最高8単位もらえる。期末試験も同じ問題が解ければ評価もSがもらえる。パワーポイントがとても分かりやすく、他の授業もこの先生のものは受けたいと思った。",
    },
    {
      user_id: user.id, lecture_name: "XML入門", teacher_name: "酒井辰也", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "満足", workload: "少ない", difficulty: "易しい", is_ending_test: false, content: "授業中に終わる量の課題なので授業外に時間を取られることはない。XMLを将来使うところがあまり想像はできなかったが、Androidを作りたいと思う人は使うと思うのでやっておいて損はないと思う。パワーポイントがとても分かりやすく、他の授業もこの先生のものは受けたい。課題に対してのフィードバックがなかったのが気になったが、授業中に課題を見せるときちんとフィードバックをくれる。",
    },
    {
      user_id: user.id, lecture_name: "Linux実習", teacher_name: "青木成一郎", lesson_type: "ハイブリッド", level_of_satisfaction: "普通", workload: "少ない", difficulty: "易しい", is_ending_test: false, content: "Linuxコマンドは仕事やアプリ作成でも役に立つので知っていないといけないことばかりの内容だが、後半はいつ使うのか微妙な内容まで含まれる。基本的に授業内で完結する課題が多いが、まれに授業外の課題も出る。Windowsが基本なのでMacの人は多少調べなければならない。進むスピードも遅く、生徒が質問するたびに遅れていくので最後まで授業の内容を終えれない。既にコマンドを知っている人には退屈かもしれない。フィードバックもあるようなことを言っていたが、結局なかったのが気になった。",
    },
    {
      user_id: user.id, lecture_name: "現代社会学", teacher_name: "森下翔", lesson_type: "オンデマンド", level_of_satisfaction: "普通", workload: "普通", difficulty: "普通", is_ending_test: false, content: "オンデマンドで90分の動画が流れるが、倍速機能などを使うと時間が短縮できる。他の一般科目よりはコスパが良くないので内容は悪くなかったが、一般科目に興味のない人は別の授業を受けたほうが良いかも知れない。",
    },
    {
      user_id: user.id, lecture_name: "線形代数基礎", teacher_name: "英保茂", lesson_type: "オンデマンド", level_of_satisfaction: "普通", workload: "普通", difficulty: "難しい", is_ending_test: true, content: "高校時代にベクトルが苦手でなければ前半はとくに問題ないが、後半は内容が難しくなりあまり理解ができなかった。しかし、課題の問題は例題を見ながらなら解ける。数学の苦手な人はやめておいたほうが良いと思う。",
    },
    {
      user_id: user.id, lecture_name: "HTML・CSS実習", teacher_name: "水井英二", lesson_type: "オンデマンド", level_of_satisfaction: "普通", workload: "普通", difficulty: "易しい", is_ending_test: true, content: "HTMLとCSSを体系的に学ぶことができるが、内容は割と詰め込まれているので経験者じゃないと覚えきれないかもしれない。資料と動画が用意されているが、基本的には動画は資料を読むだけなので動画は見なくても良いと思った。参考書は使わないので書く必要なない。実習の授業なのでフィードバックはほしいと思ってしまった。小テストが毎回あるが、資料を見ながらやれば満点は取れる。期末テストも小テストから出るので問題をまとめておくと良いと感じた。",
    },
    {
      user_id: user.id, lecture_name: "心理学", teacher_name: "澤田耕吉", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "満足", workload: "少ない", difficulty: "大変易しい", is_ending_test: false, content: "人間の心理などを知れて、大衆的に面白い内容だった。課題も授業の感想を書くだけで授業中に終わるので自分の時間をゆっくりと取ることができる。最終課題でレポートが課されるが、それほど時間はかからない",
    },
    {
      user_id: user.id, lecture_name: "多文化共生論", teacher_name: "朝田郁", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "満足", workload: "大変少ない", difficulty: "大変易しい", is_ending_test: false, content: "資料が見やすく、先生の話し方も好きだった。毎回小テストがあるが、資料を見ながらやれば9割解ける。授業中に課題が終わるので自分の時間を作りやすい。",
    },
    {
      user_id: user.id, lecture_name: "キャリア形成演習", teacher_name: "水野達郎", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "普通", workload: "大変少ない", difficulty: "大変易しい", is_ending_test: false, content: "企業の話が聞けたりするが、Web系は株式会社フェンリルぐらいしかなかったので職種に偏りはあった。就活をする上で知っておいて損はない内容が多かった。授業中に課題が終わるので自分の時間を作りやすい。",
    },
    {
      user_id: user.id, lecture_name: "FE対策演習", teacher_name: "大山口雅", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "満足", workload: "大変少ない", difficulty: "大変易しい", is_ending_test: true, content: "とても話が分かりやすくて、理解できた。参考書はなくても良いが、買っておくと授業自体はやりやすくなると思う。とても人柄が良くて、遅刻しても許してくれる。問題をあらかじめ解いておかないと全く身につかないので、それが嫌な人は話を聞き流して、期末テストだけやるのもありだと思った。期末テストの内容はGoogle検索をすると出てくるので、理解してなくても満点が取れてしまう。",
    },
    {
      user_id: user.id, lecture_name: "情報セキュリティ", teacher_name: "古賀歩", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "普通", workload: "普通", difficulty: "普通", is_ending_test: true, content: "セキュリティについて体系的に学べて、ときどき動画を見せてくれるので気分転換になる。小テストが毎回あるが、検索すると出てくる内容である。期末テストは小テストのような問題は楽だが、論述もあるので評価でSをもらうのは割としんどいと思った。",
    },
    {
      user_id: user.id, lecture_name: "プロジェクト演習2", teacher_name: "前納一希", lesson_type: "ハイブリッド", level_of_satisfaction: "満足", workload: "普通", difficulty: "普通", is_ending_test: false, content: "チーム開発ができる数少ない授業だが、うまくチームが作れないときついのかなと思った。プロジェクト演習2は半年しかなくて時間が足りないので授業外にもやっているチームも見受けられた。先生自体は質問にいつでも答えられる態勢を取っており、雑談も面白かった。",
    },
  ]
)