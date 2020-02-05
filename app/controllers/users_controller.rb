class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welocome to the Sample App!"
      # リダイレクト先のページでflashという変数に:successというkeyでアクセスした時のメッセージを代入
      redirect_to @user
      # redirect_to user_url(@user)と同じ意味。作成したユーザーのページに遷移する
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
