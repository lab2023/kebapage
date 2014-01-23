module Kebapage
  class Engine < ::Rails::Engine
    isolate_namespace Kebapage

    config.kebapage = ActiveSupport::OrderedOptions.new

    config.after_initialize do
      config.kebapage.front_layout = 'application'
      config.kebapage.admin_layout = 'hq/application'
      config.kebapage.attachment_styles = { :large => '640x480#', :thumb => '320x240#' }
      config.kebapage.attachment_url = '/system/kebapage/foto_:id.:extension'
      config.kebapage.attachment_path = ':rails_root/public:url'
      config.kebapage.attachment_max_size = 0..512.kilobytes
      config.kebapage.attachment_content_type = %w(image/jpeg image/jpg image/png application/pdf)
    end
  end
end
