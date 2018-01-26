class Api::V1::GalleriesController < ApplicationController

  def index
    if params[:name] 
      resources = Cloudinary::Api.resources_by_tag(params[:name])
    elsif params[:tags] 
      resources = Cloudinary::Api.resources_by_tag(params[:tags])
    else
      resources = Cloudinary::Api.resources
      render json: resources 
    end 
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
    params.permit(:name, :date, :location, :user_id, :tags => [])
  end 
end
