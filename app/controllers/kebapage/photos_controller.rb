require_dependency "kebapage/application_controller"

module Kebapage
  class PhotosController < ApplicationController
    def create
      @photo = Photo.create(photo: params[:photo])
      render json: @photo
    end

    def destroy
      @photo = Photo.find(params[:id])
      @photo.destroy
      render nothing: true
    end

    def photos
      @uploads = Photo.all

      respond_to do |format|
        format.json { render json: @uploads }
        format.js
      end
    end
  end
end
