require_dependency "kebapage/application_controller"

module Kebapage
  class MediaController < ApplicationController
    def create
      @medium = Medium.create(attachment: params[:attachment ])
      puts #{params[:attachment]}
      render json: @media
    end

    def destroy
      @medium = Medium.find(params[:id])
      @medium.destroy
      render nothing: true
    end

    def photos
      @uploads = Medium.all

      respond_to do |format|
        format.json { render json: @uploads }
        format.js
      end
    end
  end
end
