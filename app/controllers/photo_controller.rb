class PhotoController < ApplicationController
  def create
    @ph = Photo.create(photo_params)
    @ph.save!
  end
  
  def new
    @photo = Photo.new
  end
  
  def index
    @photos = Photo.all
  end

  private

  def photo_params
    params.require(:photo).permit(:image)
  end
end
