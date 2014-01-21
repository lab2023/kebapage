require_dependency "kebapage/application_controller"

module Kebapage
  class MediaController < ApplicationController

    def index
      @media = Medium.all
      @medium = Medium.new
    end

    def create
      @medium = Medium.create(attachment: params[:attachment ])
      render json: @media
    end

    def destroy
      @medium = Medium.find(params[:id])
      @medium.destroy
      render nothing: true
    end
  end
end
