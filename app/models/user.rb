class User < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :pictures
  has_many :todos
  has_many :user_games
  has_many :games, through: :user_games


  attr_accessor :remember_token
  # 次の行は、DBによっては大文字小文字を区別するものもあるため小文字に直して保存を行うようにしている
  before_save { self.email = email.downcase}
  validates :name, presence:true, length:{ maximum:50 }
  # 有効メールアドレスのための正規表現
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:true, length:{ maximum:255 },
            format:{with: VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i},
            # 大文字小文字を区別しない一意性の検証のための記述
            uniqueness: {case_sensitive:false}
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil:true

  # 渡された文字列のハッシュ値を返す
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def User.new_token
    SecureRandom.urlsafe_base64
  end

  # 永続セッションのためにユーザーをデータベースに記憶する
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end
  
  # 渡されたトークンがダイジェストと一致したらtrueを返す
  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  # ユーザーのログイン情報を破棄する
  def forget
    update_attribute(:remember_digest, nil)
  end


end
