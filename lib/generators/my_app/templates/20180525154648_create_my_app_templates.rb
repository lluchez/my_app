class CreateMyAppTemplates < <%= migration_parent %>
  def change
    create_table :my_app_templates do |t|
      t.string :name
      t.string :active

      t.timestamps
    end
  end
end