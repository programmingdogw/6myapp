class PicturesController < ApplicationController
  require 'pry'

  def new
    @picture = Picture.new

  end

  def create

    
    # Picture.create(
    #   image: params[:picture][:image],
    #   user_id: current_user.id,
    # )

    Picture.create(picture_params)
    
  end

  private
    def picture_params
      params.require(:picture).permit(:image, :user_id)
    end
end
