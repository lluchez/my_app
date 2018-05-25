class CreateMyAppTemplates < MyApp::Migration
  def change
    create_table :my_app_templates do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
