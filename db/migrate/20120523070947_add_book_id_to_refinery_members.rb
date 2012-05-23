class AddBookIdToRefineryMembers < ActiveRecord::Migration
  def change
    add_column :refinery_members, :book_id, :integer
  end
end
