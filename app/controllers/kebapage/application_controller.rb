module Kebapage
  class ApplicationController < ActionController::Base
    before_filter :authenticate_admin!
    layout Rails.configuration.kebapage.admin_layout
  end
end
