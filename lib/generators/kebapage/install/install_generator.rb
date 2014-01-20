require 'rails/generators'
require 'rails/generators/base'
require 'rails/generators/migration'
require 'rails/generators/active_record'

module Kebapress
  module Generators
    class Kebapage::InstallGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)
      include Rails::Generators::Migration

      desc 'Copies Kebapage views, migrations and locales.'

      def copy_views
      end

      def self.next_migration_number(dirname)
        ActiveRecord::Generators::Base.next_migration_number(dirname)
      end

      def copy_locales
        directory 'locales', 'config/locales'
      end
    end
  end
end