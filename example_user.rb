    # このページは練習のために使ったページなのでチュートリアルで削除していたけど
    # 学習の参考のために一応残しておく


class User
  attr_accessor :name, :email

  def initialize(attributes = {})
    @name = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name}<#{@email}>"
  end
end

# なんか大事そうだったのでrailsチュートリアルに書いてあったことメモっとっく
# マスアサインメント
# user = User.new(name: "アホ助", email:"hoge@hoge.com")
# みたいなのよく見かけるけど、最後の引数の波かっこが省略できるから、initializeメソッドに
# ハッシュを渡すことで、属性が定義済みの他のインスタンスを生成できるという技法
