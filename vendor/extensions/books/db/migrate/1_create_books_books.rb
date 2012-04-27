class CreateBooksBooks < ActiveRecord::Migration

  def up
    create_table :refinery_books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.integer :photo_id
      t.datetime :date
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-books"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/books/books"})
    end

    drop_table :refinery_books

  end

end
