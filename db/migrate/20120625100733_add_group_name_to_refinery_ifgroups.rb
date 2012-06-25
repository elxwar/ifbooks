class AddGroupNameToRefineryIfgroups < ActiveRecord::Migration
  def change
    add_column :refinery_ifgroups, :group_name, :string
    add_column :refinery_ifgroups, :password_digest, :string
  end
end
