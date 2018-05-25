class CreateMyAppTemplateStrings < MyApp::Migration #ActiveRecord::Migration[5.2]
  def change
    create_table :my_app_template_strings do |t|
      t.integer :template_id
      t.string :subject
      t.string :body

      t.timestamps
    end
  end
end
