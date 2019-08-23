class AddRoleParentIds < ActiveRecord::Migration[5.2]
  def change
    add_column :roles, :parent_id, :integer, :null => true
    add_column :roles, :root_parent_id, :integer, :null => true
  end
end
