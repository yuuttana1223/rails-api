# user = User.create!({ name: "yuu", email: "yuu@yuu.com", password: "password" })

Review.create!(
  [
    # 1年春学期
    {
      user_id: user.id, lecture_name: "Web開発入門", teacher_name: "谷口弘師", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "不満", workload: "大変少ない", difficulty: "大変易しい", is_ending_test: false, content: "プロゲートやドットインストールをしたことがある人には簡単すぎて物足りないが、初心者にはちょうどよいかもしれない。模写するだけの課題であったり、教科書を写したりするのが多いので、単位自体は誰でも取れる。最後に課題の点数だけはフィードバックとしてもらえたが、どこが間違っているかやアドバイスなどは書かれていない。"
    },
    {
      user_id: user.id, lecture_name: "計算機システム概論1", teacher_name: "鈴木佳代子", lesson_type: "オンデマンド", level_of_satisfaction: "大変不満", workload: "普通", difficulty: "普通", is_ending_test: true, content: "パワーポイントを渡され、基本情報の問題を解いて提出するだけの授業で動画や講義はなし。問題の回答は後から渡されるが解説はなくてフィードバックもなし。テストの対策は基本情報の問題ではないので、パワーポイントをまとめてテスト中に瞬時に見れるようにすると良いかも知れない。"
    },
    {
      user_id: user.id, lecture_name: "プロジェクト演習1", teacher_name: "鬼頭孝輔", lesson_type: "ハイブリッド", level_of_satisfaction: "不満", workload: "普通", difficulty: "易しい", is_ending_test: false, content: "算数の問題をグループで解いたり、資料集めやスライド作成などしたりした。コロナで数少ない交流の授業なので友達をこの授業で作らなければきつくなる。スライドをみんなで作り上げないといけないのだがチーム内でなにもしない人が2名もいて悲しかった。ハイブリッドにも関わらず対面で来るのが当然かの言い回しが気になったのと、質問をしても返信が返ってこないことが気になった。",
    },
    {
      user_id: user.id, lecture_name: "ITパスポート対策演習1", teacher_name: "高田進", lesson_type: "オンデマンド", level_of_satisfaction: "不満", workload: "大変少ない", difficulty: "大変易しい", is_ending_test: true, content: "パワーポイントに動画が埋め込まれていて問題も付いているが特に課題提出はなし。参考書は指定されているが、パワーポイントと全く同じ内容なので書く必要はない。最後の試験はあるが、基本ITパスポートの過去問なので検索すれば答えは出てくる。数問だけ問題は似ているが、解答が違うものがあるので一応問題文はしっかりと確認しておくことをおすすめする。",
    },
    {
      user_id: user.id, lecture_name: "特別講義1", teacher_name: "複数人", lesson_type: "オンデマンド", level_of_satisfaction: "普通", workload: "大変少ない", difficulty: "大変易しい", is_ending_test: false, content: "複数人の講師の動画や過去の特別講義の動画を見て感想文をwordに書いて提出する。課題がなくて動画がある場合があり、動画を開かない人がいるが、動画は開いて視聴履歴を付けないと単位はもらえないので注意。動画の一部分に対して深く感想を書くと評価は上がりやすい。",
    },
    {
      user_id: user.id, lecture_name: "IT活用技法1", teacher_name: "神農剛造", lesson_type: "オンデマンド", level_of_satisfaction: "大変不満", workload: "多い", difficulty: "普通", is_ending_test: false, content: "WordとExelの使い方は結構自分で調べながらやることになるので多少は慣れることができた。無音動画とパワーポイントだけの授業なので、どの操作をいつ行っているのかが分かりにくかった。そして、macユーザーは一部違う操作があるので、その都度自分で調べる必要がある。無音動画で何もせずに止まっている時間があり、いつ動き出すかわからない状態はストレスだった。",
    },
    {
      user_id: user.id, lecture_name: "キャリア形成A", teacher_name: "水野達郎", lesson_type: "オンデマンド", level_of_satisfaction: "普通", workload: "普通", difficulty: "普通", is_ending_test: false, content: "総合的に就職活動について学べる。動画は先生の声ではなくコンピュータの声だったので動画が途中聞こえないことがたまにあった。。動画時間は短めだった。",
    },
    {
      user_id: user.id, lecture_name: "ネットワーク入門", teacher_name: "岡本浩", lesson_type: "オンデマンド", level_of_satisfaction: "大変不満", workload: "多い", difficulty: "難しい", is_ending_test: true, content: "基本的にはパワーポイントだけ渡されて、wordの課題に取り組むのだが内容が専門的なので割と理解するのがしんどい部分があった。フィードバックや課題に対しても答えがもらえないので、期末テスト対策がしんどかった。問題も基本情報の過去問とかではないので、しっかりとパワーポイントや直前に渡される予想問題を復習しておくことをおすすめする。",
    },
    {
      user_id: user.id, lecture_name: "情報数学", teacher_name: "青木成一郎", lesson_type: "オンデマンド", level_of_satisfaction: "普通", workload: "多い", difficulty: "普通", is_ending_test: false, content: "基本的にはドリルを解くだけで、中間と最後に問題が配られるので量的には多いと感じた。高校のときに数学ができていなかった人は苦しむのでやめておいたほうが良い。やっていた人からすると復習になるので楽だが、数Ⅲはやっていなかったのでしんどかった。中間と最後のレポートはあらかじめkingの問題と似ているものが出るので見ながらやると少しは楽になると思う。",
    },
    {
      user_id: user.id, lecture_name: "英語1", teacher_name: "松尾伊都", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "不満", workload: "多い", difficulty: "大変易しい", is_ending_test: false, content: "英語で資料を作成したり、ビジネスメールを作成したりした。後半は班で学習するのでリーダーや英語ができる人がいないと辛いものがある。評価も班次第なので、個人で英語スキルがある人は石田眞也先生のほうが良いと思う。なぜかというと、授業外の課題はなくて最終試験ができればSは簡単に取れるため。試験も問題からほぼそのまま出るので勉強すれば割と簡単。",
    },
    {
      user_id: user.id, lecture_name: "アルゴリズム1", teacher_name: "髙橋良英", lesson_type: "オンデマンド", level_of_satisfaction: "大変不満", workload: "大変多い", difficulty: "普通", is_ending_test: false, content: "コロナのせいで3回分授業を削られていたにもかかわらず、今までと同じ量を圧縮して講義や課題として出されていたのでとても量が多かった。毎回課題の解答を提出期間内に出してくれるので課題自体は楽だが、フローチャートを書くのに時間がかかり、授業を全部まともに聞いているとパンクしてしまう。最終課題は任意なので出さなくても良いが、Sがほしいなら出したほうが良い。",
    },
    # 秋学期
    {
      user_id: user.id, lecture_name: "アルゴリズム2", teacher_name: "島田美智子", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "満足", workload: "大変少ない", difficulty: "易しい", is_ending_test: true, content: "例題を解説して、その後関連問題や応用情報や基本情報の過去問を解いていくスタイルで、資料も解説も分かりやすい。一番最後辺りは内容自体が難しくなるが、試験範囲には入らなかった。基本的に課題はないので、試験勉強もしくは、普段の授業はきちんと聞いておいたほうが良い。",
    },
    {
      user_id: user.id, lecture_name: "ITパスポート対策演習2", teacher_name: "高田進", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "不満", workload: "大変少ない", difficulty: "大変易しい", is_ending_test: true, content: "ITパスポート対策演習1がそのままリアルタイムオンラインになっただけであった。出欠は授業の真ん中から後半あたりに取ることが多いが、サボり防止で時間を決めていない。最終試験も過去問の内容がそのままで、調べれば出てくる内容ばかりである。",
    },
    {
      user_id: user.id, lecture_name: "JavaScript実習", teacher_name: "飯田慈子", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "普通", workload: "普通", difficulty: "普通", is_ending_test: false, content: "基本的に模写をしながら、分からなかったらSlackで先生に聞いていくスタイルで、Zoomは使わないので基本チャットベースのやり取り。JavaScript経験者の場合はさくさく進むが、初心者はしんどいと思う。課題は当たり前だが、人のを写した形跡があれば0点になる。毎回の課題の点数とフィードバックをもらえるのは嬉しいが、全員分の点数とフィードバックも見れてしまう。課題の解答も用意されているが、個人的には変数をローマ字で書くのをやめてほしかった。最終課題は自由作品かレポートを選べるが、自由作品が作れない人は評価は下る傾向にある。",
    },
    {
      user_id: user.id, lecture_name: "システム開発入門", teacher_name: "立道裕三", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "不満", workload: "大変少ない", difficulty: "大変易しい", is_ending_test: true, content: "課題はほとんどなくて、小テストや期末テストでほとんど成績が決まる。基本情報の過去問が多いので検索したら出てくる。資料一枚に対して抽象的な話が多いので、聞いていると眠くなってしまう。",
    },
    {
      user_id: user.id, lecture_name: "JavaScript実習", teacher_name: "飯田慈子", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "普通", workload: "普通", difficulty: "普通", is_ending_test: false, content: "基本的に模写をしながら、分からなかったらSlackで先生に聞いていくスタイルで、Zoomは使わないので基本チャットベースのやり取り。JavaScript経験者の場合はさくさく進むが、初心者はしんどいと思う。課題は当たり前だが、人のを写した形跡があれば0点になる。毎回の課題の点数とフィードバックをもらえるのは嬉しいが、全員分の点数とフィードバックも見れてしまう。課題の解答も用意されているが、個人的には変数をローマ字で書くのをやめてほしかった。最終課題は自由作品かレポートを選べるが、自由作品が作れない人は評価は下る傾向にある。",
    },
    {
      user_id: user.id, lecture_name: "計算機アーキテクチャ", teacher_name: "中村行宏", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "不満", workload: "普通", difficulty: "普通", is_ending_test: false, content: "最初はとても優しいところからスタートするが、最終的には割と難しい内容まで扱う。基本情報を解いたことがあれば多少は楽になる。自分の場合はハードウェアにそこまで興味がなかったので、聞いていて理解できないこともありしんどかった。",
    },
    {
      user_id: user.id, lecture_name: "キャリア形成B", teacher_name: "水野達郎", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "普通", workload: "少ない", difficulty: "易しい", is_ending_test: false, content: "キャリア形成Aと比べてチームワークが多めになっていった。チームのメンバーが良いか悪いかに左右されてしまうが、数少ないグループワークの授業である。キャリア形成A同様、自己分析であったり、履歴書作成などもできるので就活を意識している人は良いかも知れない。",
    },
    {
      user_id: user.id, lecture_name: "PHP実習", teacher_name: "立嶋清雅", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "不満", workload: "少ない", difficulty: "易しい", is_ending_test: false, content: "人柄は良さそうな先生だった。課題は少なめなので初めての人は逆に身につかないと思う。みんなで書いていく方式なので、できる人はかなり待たされる。先生自体がPHPの情報をキャッチアップしていないので、書き方や資料が古いことが多々あった。変数名を一般的なものではなくて、自分方式で嫌われると知りながら使っているのでそこは一般的な変数名に合わせてほしいと思った。最終課題は自由課題だが、自由に作れない人は辛いのかなと感じた。",
    },
    {
      user_id: user.id, lecture_name: "データベース設計", teacher_name: "渡邉毅", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "満足", workload: "少ない", difficulty: "易しい", is_ending_test: true, content: "授業自体は分かりやすく、データベースについて簡単なものなら扱えるようになる。基本的にはMariaDBを使用していくので一緒に手を動かしながらやると良いと感じた。期末テストは授業で出た課題を解けるようにしておくことと、パワーポイントにかかれている内容や場所をある程度把握しておくと評価Sはもらえる。",
    },
    {
      user_id: user.id, lecture_name: "経営情報システム", teacher_name: "永野直人", lesson_type: "オンデマンド", level_of_satisfaction: "不満", workload: "少ない", difficulty: "易しい", is_ending_test: true, content: "基本は動画とパワーポイントを渡されて、基本情報などの過去問が課題になってくる。基本的に検索すると出てきてしまうので、見ながらなら毎回100点が取れてしまう。動画はパワーポイントをそのまま読んでいるだけなので、動画は見なくても良いかも知れない。",
    },
    {
      user_id: user.id, lecture_name: "英語2", teacher_name: "石田眞也", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "普通", workload: "大変少ない", difficulty: "大変易しい", is_ending_test: true, content: "授業内で課題の時間まで与えてくれるので自分の時間が取りやすい。英語が苦手な人は苦痛かもしれない。授業をしっかりと聞いていれば期末テストの問題も授業のテキストの問題とほぼ同じなので、テスト勉強はそれほどいらない。",
    },
    {
      user_id: user.id, lecture_name: "ヒューマンインタフェース", teacher_name: "植田浩司", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "普通", workload: "大変少ない", difficulty: "大変易しい", is_ending_test: false, content: "動画や資料を見てその感想をフォーラムに書くという内容。UI/UXについて述べられているのでフロントエンドを目指している人には悪くないと思う。動画もそれほど長くはない。期末試験は既存の知識や常識で解ける問題がほとんどなのでそれほど恐れなくても大丈夫。",
    },
    {
      user_id: user.id, lecture_name: "日本のこころ1", teacher_name: "安達利夫", lesson_type: "オンデマンド", level_of_satisfaction: "不満", workload: "大変少ない", difficulty: "大変易しい", is_ending_test: false, content: "課題が数個のレポートだけなのですぐに終わり、自分の時間が作りやすい。課題も自己紹介や来年度の目標を書くので、授業との関連性があまり分からなかった。",
    },
    {
      user_id: user.id, lecture_name: "哲学", teacher_name: "國嶋貴美子", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "不満", workload: "大変少ない", difficulty: "大変易しい", is_ending_test: false, content: "最終課題をいきなり渡されるが、それ以外特に課題はないのでとても楽だった。最終課題レポートはみんなの前で読まれてフィードバックをもらうが、反応が悪くなければA評価はもらえる。出席を取る時間がかなり長めに設定されていた。",
    },
    {
      user_id: user.id, lecture_name: "特別講義2", teacher_name: "複数人", lesson_type: "オンデマンド", level_of_satisfaction: "普通", workload: "大変少ない", difficulty: "大変易しい", is_ending_test: false, content: "基本特別講義1と同じだが、途中でコピペをしている人が出てきたので、警告を出されていた。著作権の講義が印象に残っている。",
    },
    {
      user_id: user.id, lecture_name: "Web技術概論", teacher_name: "田渕篤", lesson_type: "オンデマンド", level_of_satisfaction: "普通", workload: "少ない", difficulty: "易しい", is_ending_test: false, content: "Webの知識が体系的に学べる。Web系に就職したいと思っている人は最低限知っておかないといけないと思った。課題もすぐに終わるものばかりであった。",
    },
    # 2年春学期
    {
      user_id: user.id, lecture_name: "Webプログラミング", teacher_name: "田尻良", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "普通", workload: "少ない", difficulty: "大変易しい", is_ending_test: false, content: "課題は先生の気分で変わったりもするが、基本的に初心者に合わせてもらえるのでHTML・CSS・JavaScriptが不安な人でも安心。その代わり、割とできる人は物足りなく感じてしまう。先生自体は分かる人は聞かなくても大丈夫というスタイルなので、人柄はとても良いと感じた。単位もプログラミングができない人でも取れるようにしてくれているので苦手な方にはおすすめ。授業終わりの課題がたまにと問題形式のテストが2回と、最終課題があるが、どれも易しかった。",
    },
    {
      user_id: user.id, lecture_name: "Javaアプリケーション開発", teacher_name: "田渕篤", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "不満", workload: "普通", difficulty: "大変難しい", is_ending_test: false, content: "先生の人柄はとても良く質問にも熱心に答えてくれる。1年生の授業でJavaFXを使っている前提で授業が進んだので、内容が難しくなったのもありあまり授業の内容が理解できなかった。。コードで書いたものは残さないスタイルなので、少しでも遅れたり、エラーが出ておいていかれると後は何もできなくなっている生徒がいた。質問を授業を止めてでもできる精神がない人は、友達に聞くしかないのでそれもできない人はしんどいと思う。",
    },
    {
      user_id: user.id, lecture_name: "iOSアプリ開発1", teacher_name: "前納一希", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "満足", workload: "多い", difficulty: "大変難しい", is_ending_test: false, content: "Macの人にはおすすめだが、Windowsの場合はWindowsから学校のパソコンに接続しないといけないので自習や課題に取り組むのに困難だと思った。iOSの予習をあらかじめしておくと、とても勉強になる。エラーの見方などはWebと違ってわかりにくいので、他の授業と違って難しいと思う。質問には熱心に答えてくれるのと動画や資料を残してもらえるのはありがたかった。授業を毎回止める人がいたときでも、止められないように対策していたのはとても良かった。",
    },
    {
      user_id: user.id, lecture_name: "オブジェクト指向設計実習", teacher_name: "手塚正義", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "大変不満", workload: "大変多い", difficulty: "大変難しい", is_ending_test: true, content: "授業の説明に対して課題が難しすぎて、どういうふうに記述してばいいか分からないときが多々あった。説明は分かりにくく、授業内の課題が多すぎて終わらなかったことが多々合った。早めに課題を出してしまうと、みんなの前で課題を晒されて発表させられるので、授業が終わる直前に出すことをおすすめする。期末テストは、去年の過去問などが8割使い回されるので先輩から過去問を入手しているとだいぶ楽になる。",
    },
    {
      user_id: user.id, lecture_name: "ネットワークプログラミング", teacher_name: "前納一希	", lesson_type: "リアルタイムオンライン", level_of_satisfaction: "大変満足", workload: "多い", difficulty: "大変難しい", is_ending_test: false, content: "KCGで唯一フレームワーク(Express)を使用する授業で、ある程度基礎が身についている人であればとても成長できる授業だと思う。逆にHTML・CSS・JSの基礎がわからない人にはしんどいと思うので取らないことをおすすめする。主な内容としてはリアルタイムチャットをsocket.ioとExpressを使用し、作成する。最終課題はSlackのクローンを作ることで必須項目と任意項目があり、とてもやりがいがあった。課題の作成時間は授業内にかなり取ってくれるが、基礎ができていないとわからないところがわからないという状態になるので注意。",
    },
  ]
)