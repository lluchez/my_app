class CreateMyAppTemplateStrings < <%= migration_parent %>
  def change
    create_table :my_app_template_strings do |t|
      t.integer :template_id
      t.string :subject
      t.string :body

      t.timestamps
    end
  end
end
