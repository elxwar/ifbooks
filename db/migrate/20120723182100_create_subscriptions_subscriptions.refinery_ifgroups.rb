# This migration comes from refinery_ifgroups (originally 3)
class CreateSubscriptionsSubscriptions < ActiveRecord::Migration

  def up
    create_table :refinery_subscriptions do |t|
      t.integer :book_id
      t.integer :ifgroup_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-subscriptions"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/subscriptions/subscriptions"})
    end

    drop_table :refinery_subscriptions

  end

end
