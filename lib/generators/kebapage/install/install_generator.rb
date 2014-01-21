require 'rails/generators'
require 'rails/generators/base'
require 'rails/generators/migration'
require 'rails/generators/active_record'

module Kebapage
  module Generators
    class Kebapage::InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      include Rails::Generators::Migration

      desc 'Copies Kebapage views, migrations and locales.'

      def copy_views
        directory 'views', 'app/views'
      end

      def self.next_migration_number(dirname)
        ActiveRecord::Generators::Base.next_migration_number(dirname)
      end

      def create_migration_file
        migration_template 'migrations/static_pages.rb', 'db/migrate/create_kebapage_static_pages.rb' rescue nil
        migration_template 'migrations/media.rb', 'db/migrate/create_kebapage_media.rb' rescue nil
        migration_template 'migrations/add_slug_to_kebapage_static_pages.rb', 'db/migrate/add_slug_to_kebapage_static_pages.rb' rescue nil
        migration_template 'migrations/friendly_id_slugs.rb', 'db/migrate/create_friendly_id_slugs.rb' rescue nil
      end

      def copy_locales
        directory 'locales', 'config/locales'
      end
    end
  end
end