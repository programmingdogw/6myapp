rails チュートリアルの１０章まで終わった段階。<br>
色々なアプリのベースに使えるかと思いこの名前で(myapp2)で保存<br>

備考<br>
ログイン機能は使うだろうからそこは実装してある。<br>
deviseは使わずにやってるので仕組みは読み解きやすいが、不便に感じたらdeviseを使う選択肢もあり<br>
管理者権限についても実装済み、実際のサービスで使う場合の管理者は変更すること<br>
マイクロポスト関連はユーザーにどんなDB紐付けるかは作るアプリ次第だろうと思ったので実装してない<br>
また、ページネーションは実装してあるが、日付順に並ぶといった機能はつけていないので、必要ならばつける<br>
今後そのあたりの調整をしてmyapp3としてベースにする可能性有り<br>



最後にmyapp1のReadmeにも載せておいた複製手順をコピペしとく<br>
クローンの手順 まず新しくアプリを作りたいディレクトリに移動<br>
そこで git clone クローン元のgithubのurl 新しいアプリ名<br>
複製はできたが、まだ元のurlに紐づいたままなのでまずgithub上に新しいアプリ用のレポジトリを作る<br>
git remote set-url origin さっき作った新しいアプリ用のリポジトリのurl<br>
これでpush先が変わっているはず<br>

ちなみにremote urlの確認は<br>
git config remote.origin.urlで確認できる<br>