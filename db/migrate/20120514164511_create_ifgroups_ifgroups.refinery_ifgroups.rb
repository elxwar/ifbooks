# This migration comes from refinery_ifgroups (originally 1)
class CreateIfgroupsIfgroups < ActiveRecord::Migration

  def up
    create_table :refinery_ifgroups do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :school_name
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :town
      t.string :county
      t.string :post_code
      t.string :teacher_email
      t.string :group1_email
      t.string :group2_email
      t.string :invoice_to
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-ifgroups"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/ifgroups/ifgroups"})
    end

    drop_table :refinery_ifgroups

  end

end
