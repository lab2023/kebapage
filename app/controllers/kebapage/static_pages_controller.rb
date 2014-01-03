require_dependency "kebapage/application_controller"

module Kebapage
  class StaticPagesController < ApplicationController
    before_action :set_static_page, only: [:show, :edit, :update, :destroy]
    skip_before_filter :authenticate_admin!, only: [:show]

    def index
      @static_pages = StaticPage.all
    end

    def show
      render layout: 'layouts/application'
    end

    def new
      @static_page = StaticPage.new
    end

    def edit
    end

    def create
      @static_page = StaticPage.new(static_page_params)

      if @static_page.save
        redirect_to @static_page
      else
        render action: 'new'
      end
    end

    def update
      if @static_page.update(static_page_params)
        redirect_to @static_page
      else
        render action: 'edit'
      end
    end

    def destroy
      @static_page.destroy
      redirect_to static_pages_url
    end

    private
      def set_static_page
        @static_page = StaticPage.find(params[:id])
      end

      def static_page_params
        params.require(:static_page).permit(:title, :content)
      end
  end
end
