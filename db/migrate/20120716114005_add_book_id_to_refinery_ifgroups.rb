class AddBookIdToRefineryIfgroups < ActiveRecord::Migration
  def change
    add_column :refinery_ifgroups, :book_id, :integer
  end
end
