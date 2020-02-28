class UsersController < ApplicationController
  before_action :logged_in_user, only:[:index, :edit, :update, :destroy]
  before_action :correct_user, only:[:edit,:update]
  before_action :admin_user,     only: :destroy

  
  def index
    @users = User.paginate(page:params[:page], per_page:10)
  
    
  end


  def show
    @user = User.find(params[:id])

    @pictures = Picture.where(user_id: @user.id)

    @todos = Todo.where(user_id: @user.id)

    gon.time1 = gontime1
    gon.time2 = gontime2

  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "ユーザー登録完了です！"
      # リダイレクト先のページでflashという変数に:successというkeyでアクセスした時のメッセージを代入
      redirect_to @user
      # redirect_to user_url(@user)と同じ意味。作成したユーザーのページに遷移する
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end 

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end


  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end


  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :birthdate, :deathdate, :image, :lifegoal, :imagetext)
    end

    # beforeアクション

    # ログイン済みユーザーかどうか確認
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    # 正しいユーザーかどうか確認
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url)unless@user == current_user
      # リファクタリング後（current_user?定義後は下）
      # redirect_to(root_url) unless current_user?(@user)
    end


    # 管理者かどうか確認
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end


    def gontime1
      @user = User.find(params[:id])
      date1 = @user.birthdate.in_time_zone.to_i
      date2 = Date.today.in_time_zone.to_i
      date3 = @user.deathdate.in_time_zone.to_i
      date4 = date1.to_f
      date5 = date2.to_f
      date6 = date3.to_f
      gontime1 = (date5 - date4)
    end

    def gontime2
      @user = User.find(params[:id])
      date1 = @user.birthdate.in_time_zone.to_i
      date2 = Date.today.in_time_zone.to_i
      date3 = @user.deathdate.in_time_zone.to_i
      date4 = date1.to_f
      date5 = date2.to_f
      date6 = date3.to_f
      gontime1 = (date6 - date5)
    end


end
