class Api::V1::GalleriesController < ApplicationController
  def index
    resources = Cloudinary::Api.resources
    render json: resources 
  end

  def create
    gallery = Gallery.new(gallery_params)
    if gallery && gallery.save
      render json: gallery 
    else 
      render json: {error: 'invalid gallery information'}
    end 
  end

  def update
  end

  def destroy
  end

  private 

  def gallery_params 
    params.require(:gallery).permit(:name, :date, :location, :user_id, :tags => [])
  end 
end
