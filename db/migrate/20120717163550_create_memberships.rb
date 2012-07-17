class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :ifgroup_id
      t.references :groupable, :polymorphic => true

      t.timestamps
    end
    #add_index :memberships, :groupable_id
  end
end
