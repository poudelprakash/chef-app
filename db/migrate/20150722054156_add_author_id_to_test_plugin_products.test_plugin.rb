# This migration comes from test_plugin (originally 20150722054058)
class AddAuthorIdToTestPluginProducts < ActiveRecord::Migration
  def change
    add_column :test_plugin_products, :author_id, :integer
  end
end
