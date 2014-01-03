require_dependency "kebapage/application_controller"

module Kebapage
  class StaticPagesController < ApplicationController
    before_action :set_static_page, only: [:show, :edit, :update, :destroy]

    # GET /static_pages
    def index
      @static_pages = StaticPage.all
    end

    # GET /static_pages/1
    def show
    end

    # GET /static_pages/new
    def new
      @static_page = StaticPage.new
    end

    # GET /static_pages/1/edit
    def edit
    end

    # POST /static_pages
    def create
      @static_page = StaticPage.new(static_page_params)

      if @static_page.save
        redirect_to @static_page, notice: 'Static page was successfully created.'
      else
        render action: 'new'
      end
    end

    # PATCH/PUT /static_pages/1
    def update
      if @static_page.update(static_page_params)
        redirect_to @static_page, notice: 'Static page was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /static_pages/1
    def destroy
      @static_page.destroy
      redirect_to static_pages_url, notice: 'Static page was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_static_page
        @static_page = StaticPage.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def static_page_params
        params.require(:static_page).permit(:title, :content)
      end
  end
end
