class PicturesController < ApplicationController
  require 'pry'


  def index
    @picture = Picture.new
    @pictures = Picture.where(user_id: params[:user_id])
    @user = User.find_by(id: params[:user_id])
  end



  def new
    @picture = Picture.new

  end

  def create

    
    # Picture.create(
    #   image: params[:picture][:image],
    #   user_id: current_user.id,
    # )

    Picture.create(picture_params)

    redirect_to user_pictures_path
    
  end

  private
    def picture_params
      params.require(:picture).permit(:image, :user_id)
    end
end
