class CreateMembersMembers < ActiveRecord::Migration

  def up
    create_table :refinery_members do |t|
      t.string :name
      t.string :email
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-members"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/members/members"})
    end

    drop_table :refinery_members

  end

end
