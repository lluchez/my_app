require 'rails/generators'
require 'rails/generators/migration'
require 'generators/my_app/migration_helper'

module MyApp
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration
      include MyApp::Generators::MigrationHelper

      # def install
      #   run 'bundle install'
      #   route "mount MyApp::Engine => '/my_app'"
      #   rake 'my_app:install:migrations'
      #   # rake 'db:migrate'
      # end

      source_root(File.expand_path('../templates', __FILE__))
      desc("add the migrations")

      # def self.next_migration_number(path)
      #   unless @prev_migration_nr
      #     @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
      #   else
      #     @prev_migration_nr += 1
      #   end
      #   @prev_migration_nr.to_s
      # end

      def self.next_migration_number(path); end

      def copy_migrations(**args)
        template_dir = File.expand_path('../templates', __FILE__)
        Dir.entries(template_dir).select{ |f| f =~ /\.rb$/ }.each do |migration_file|
          generate_from_template__(migration_file, "db/migrate/#{migration_file}", {})
        end
      end

      def generate_from_template__(source, destination, config = {})
        source  = File.expand_path(find_in_source_paths(source.to_s))

        set_migration_assigns!(destination)
        context = instance_eval('binding')

        # dir, base = File.split(destination)
        # numbered_destination = File.join(dir, ["%migration_number%", base].join('_'))

        create_migration(destination, nil, config) do
          ERB.new(::File.binread(source), nil, '-', '@output_buffer').result(context)
        end
      end
    end
  end
end
