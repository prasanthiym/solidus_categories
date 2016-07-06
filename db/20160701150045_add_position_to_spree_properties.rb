class AddPositionToSpreeProperties < ActiveRecord::Migration
  def change
    add_column :spree_properties , :position ,:integer
  end
end
