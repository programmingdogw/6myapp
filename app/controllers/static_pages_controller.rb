class StaticPagesController < ApplicationController
  def home
    
  end

  def help
    @users = User.paginate(page:params[:page], per_page:10)
  end

  def about
  end

  def contact
  end

  def experiment
    @user = current_user
    @pictures = Picture.all
  end


  private
    
  
  
  
end
