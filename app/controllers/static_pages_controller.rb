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
    @picture = Picture.find(1)
  end


  private
    
  
  
  
end
