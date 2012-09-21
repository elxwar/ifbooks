class AddFilesToBooks < ActiveRecord::Migration
  def self.up
    1.upto(10) do |i|
      @file_name = 'file' + i.to_s + '_id'
      add_column :refinery_books, @file_name, :integer
    end

  end

  def self.down
    1.upto(10) do |i|
      @file_name = 'file' + i.to_s + '_id'
      remove_column :refinery_books, @file_name
    end
  end
end
