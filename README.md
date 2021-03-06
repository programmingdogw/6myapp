# 主に使用した言語・技術
  - ruby
  - ruby on rails
  - haml
  - sass
  - bootstrap
  - vue.js
  - jQuery
  - postgreSQL
  - heroku

### 補足
こちらのアプリではS３等を使用する予定はございませんので画像が一定期間後リンク切れとなります。そのため定期的にデータベースをクリーンにさせていただきますことをご了承ください。dynoが再起動するまでは画像が表示された状態の挙動が確認いただけます。また、死亡年月日が生年月日より早い、１日に使う時間の合計が２４時間を超える、といった場合はgooglechartsが正しく表示されません。（現在このアプリの改修よりもやりたいことがある,新たに作り直した方が色々とすっきりする、ためこのまま置いております。見苦しいアプリですが素人がとりあえずバタバタしてみた過程を残しているものなのでご理解ください。）

S3を使っているアプリもありますのでもしよろしければそちらもご覧ください
http://18.180.245.39/


### とりあえず何か作ってみようと挑戦した初の個人アプリ Your Life
デプロイ先url https://afternoon-scrubland-33526.herokuapp.com/
![portfolioyourlife](https://user-images.githubusercontent.com/59106983/80185337-25036180-8647-11ea-8ee4-4cfcd6d6734d.gif)

# 機能紹介

### 投稿した写真をスライドショーで閲覧出来るアルバム機能
![portfolioyourlife2](https://user-images.githubusercontent.com/59106983/80185437-4b290180-8647-11ea-80bd-91db828bd8eb.gif)


### ユーザーの入力情報を元に残りの人生をカウントダウン。グラフで残り人生の内訳も見える。
![portfolioyourlife4](https://user-images.githubusercontent.com/59106983/80185737-ce4a5780-8647-11ea-8d01-80e10023887e.gif)

### todoリストを作成し、達成するとポイントが貯まる
![portfolioyourlife5](https://user-images.githubusercontent.com/59106983/80295043-16818b00-87aa-11ea-8db3-e9496fcfde69.gif)

### 他のユーザーがどんなことを達成したか見てみるのも良いかも？
![portfolioyourlife3](https://user-images.githubusercontent.com/59106983/80185675-b4107980-8647-11ea-88b8-647e26e513a2.gif)

### 達成ポイントを消費してゲームを購入可能（おまけ要素）（後述のゲーム以外はダミー）
![portfoliyourlife6](https://user-images.githubusercontent.com/59106983/80295071-7710c800-87aa-11ea-930a-db41205631da.gif)

### 今までの獲得ポイントランキングを閲覧可能
![portfolioyourlife7](https://user-images.githubusercontent.com/59106983/80295090-bf2fea80-87aa-11ea-882b-ebd84a038430.gif)

### おまけ要素１　色当てゲーム(rgbを調整して上下のバーの色を揃えるゲーム）（難易度３種）
![portfolioyourlife8](https://user-images.githubusercontent.com/59106983/80295128-1209a200-87ab-11ea-98a5-416e194f7210.gif)

### おまけ要素２　秒数当てゲーム（指定された秒数で一定の誤差以内にタイマーを止めるとクリア）（難易度３種）
![portfoliyourlife9](https://user-images.githubusercontent.com/59106983/80295184-b2f85d00-87ab-11ea-814d-c651bc6a229f.gif)



# 作った経緯

自分の人生の残り時間を意識すれば無駄な時間が減るかと思った。

短い期日の中で質の高いもの作るのはまだ難しく、テーマを変わった物にして差別化したり、試せる物は不格好でも試して入れていこうと思った。

todoアプリはたくさんあり、快適なものが多いがタスク管理が主な目的のアプリがほとんどで、人生のtodoアプリ的な物は見当たらなかった。


# 挑戦したこと

* カリキュラムに含まれない技術も使用するように心掛けた(主に以下にあげるような物)

* Railsチュートリアル８章を参考にdeviseを使わないsessionによるログイン機能を作った。

* slickやgon、googlechartsを使ってみた

* bootstrapを使ってみた

* vue.jsを使ってみた

# 反省点

* 思いついた物をその都度実装するような無計画な拡張の仕方だったので、とにかくコードもロジックも汚い。

* 最初に、綺麗だからという理由で背景画像を入れて、お洒落な気がするという理由で右にヘッダーフッターを固定したこと。実際に書き始めると邪魔だった。

* bootstrapを筆頭に、挑戦したはいいがその技術の良さを引き出せていない。

# 次回のアプリにどう活かすか
* デザインよりも機能を優先して作りあとでデザインは仕上げる

* 作り方自体に試行錯誤しているため、ある程度の計画変更は仕方がないが、それでも無計画に作成するのではなく先を見据える

* jsは関連はまずはチーム開発で使うことになっているjqueryに習熟する。

