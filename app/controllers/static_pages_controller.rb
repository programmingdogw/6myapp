class StaticPagesController < ApplicationController
  def home
    # 本来不要だがトップページでデータ操作の様子見たいから管理者呼んでる
    @user = User.find_by(id: 1)
  end

  def help
  end

  def about
  end

  def contact
  end

  def fuck
  end
  
  
end
