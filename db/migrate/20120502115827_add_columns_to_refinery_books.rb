class AddColumnsToRefineryBooks < ActiveRecord::Migration
  def change
    add_column :refinery_books, :margin_image_id, :integer
    add_column :refinery_books, :description_for_schools, :text
    add_column :refinery_books, :description_for_groups, :text
    add_column :refinery_books, :video_url, :string
  end
end
