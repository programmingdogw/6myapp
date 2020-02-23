class PicturesController < ApplicationController
  before_action :delete_picture_params, only: [:destroy]


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


  def destroy
    @picture.delete

    redirect_to user_path(id:current_user.id)
  end

  private
    def picture_params
      params.require(:picture).permit(:image, :user_id)
    end


    def delete_picture_params
      @picture = Picture.find(params[:id])
    end
end
