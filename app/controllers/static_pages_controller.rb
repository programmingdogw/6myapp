class StaticPagesController < ApplicationController
  def home
    
  end

  def help
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
