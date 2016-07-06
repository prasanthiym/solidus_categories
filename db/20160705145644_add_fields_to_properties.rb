class AddFieldsToProperties < ActiveRecord::Migration
  def change
      add_column :spree_properties, :lft, :integer,:null => false, :index => true, :default => 0
      add_column :spree_properties, :rgt,:integer, :null => false, :index => true,  :default => 0
      add_column :spree_properties, :parent_id, :integer ,:null => false, :default => 0

      add_column :spree_properties, :depth, :integer ,:null => false, :default => 0

  end
end
