# NOTE:
# Make all migrations inheriting from MyApp::Migration rather than `ActiveRecord::Migration` or `ActiveRecord::Migration[X]`

module MyApp
  if Rails::VERSION::MAJOR <= 4
    class Migration < ActiveRecord::Migration; end
  else
    class Migration < ActiveRecord::Migration[ActiveRecord::Migration.current_version]; end
  end
end
