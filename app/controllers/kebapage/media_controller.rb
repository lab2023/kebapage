require_dependency 'kebapage/application_controller'

module Kebapage
  class MediaController < ApplicationController
    def index
      @media = Medium.order('attachment_updated_at DESC')
      @medium = Medium.new
    end

    def create
      @medium = Medium.create(attachment: params[:attachment ])
      render json: @medium
    end

    def destroy
      @medium = Medium.find(params[:id])
      @medium.destroy

      if request.xhr?
        render nothing: true
      else
        redirect_to media_path
      end
    end
  end
end
