# This migration comes from test_plugin (originally 20150722042657)
class CreateTestPluginProducts < ActiveRecord::Migration
  def change
    create_table :test_plugin_products do |t|
      t.string :name
      t.text :description
      t.float :price

      t.timestamps null: false
    end
  end
end
