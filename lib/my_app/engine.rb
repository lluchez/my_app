module MyApp
  class Engine < ::Rails::Engine
    isolate_namespace MyApp
  end
end
