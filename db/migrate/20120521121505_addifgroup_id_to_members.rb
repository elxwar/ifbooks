class AddifgroupIdToMembers < ActiveRecord::Migration
  def change
    add_column :refinery_members, :ifgroup_id, :integer
  end
end
