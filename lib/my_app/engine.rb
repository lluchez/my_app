# require "generators/my_app/install_generator"

module MyApp
  class Engine < ::Rails::Engine
    isolate_namespace MyApp

    initializer :append_migrations do |app|
      # Generate the migration files
      # MyApp::Generators::InstallGenerator.start()
      # binding.pry

      # Make the Main App use generated migrations files
      unless app.root.to_s.match root.to_s
        config.paths['db/migrate'].expanded.each do |expanded_path|
          app.config.paths['db/migrate'] << expanded_path
        end
      end
    end
  end
end
