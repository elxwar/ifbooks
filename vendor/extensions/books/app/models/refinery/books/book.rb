module Refinery
  module Books
    class Book < Refinery::Core::BaseModel
      self.table_name = 'refinery_books'      
      attr_accessible :title, :author, :description, :photo_id, :date, :position
      acts_as_indexed :fields => [:title, :author, :description]

      validates :title, :presence => true, :uniqueness => true
          
      belongs_to :photo, :class_name => '::Refinery::Image'
        
    end
  end
end
