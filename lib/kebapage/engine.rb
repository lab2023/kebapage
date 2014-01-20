module Kebapage
  class Engine < ::Rails::Engine
    isolate_namespace Kebapage

    config.kebapage = ActiveSupport::OrderedOptions.new

    config.after_initialize do
      config.kebapage.front_layout = 'application'
      config.kebapage.admin_layout = 'hq/application'
    end
  end
end
