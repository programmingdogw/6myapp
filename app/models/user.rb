class User < ApplicationRecord
  # 最初の行は、DBによっては大文字小文字を区別するものもあるため小文字に直して保存を行うようにしている
  before_save { self.email = email.downcase}
  validates :name, presence:true, length:{ maximum:50 }
  # 有効メールアドレスのための正規表現
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:true, length:{ maximum:255 },
            format:{with: VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i},
            # 大文字小文字を区別しない一意性の検証のための記述
            uniqueness: {case_sensitive:false}
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  # 渡された文字列のハッシュ値を返す
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
