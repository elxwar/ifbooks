module Refinery
  module Books
    class Book < Refinery::Core::BaseModel
      self.table_name = 'refinery_books'
      #has_many :subscriptions
      #has_many :ifgroups, :through => :subscriptions

      #has_many :subscriptions, :class_name => '::Refinery::Subscriptions::Subscription'
      #has_many :ifgroups, :class_name => '::Refinery::Ifgroups::Ifgroup', :through => :subscriptions


      #has_many :memberships, :as => :groupable
      #has_many :ifgroups, :class_name => '::Refinery::Ifgroups::Ifgroup', :through => :memberships


      attr_accessible :title, :author, :description, :photo_id, :date, :position, :margin_image_id, :description_for_schools, :description_for_groups, :video_url
      acts_as_indexed :fields => [:title, :author, :description]

      validates :title, :presence => true, :uniqueness => true
          
      belongs_to :photo, :class_name => '::Refinery::Image'
      belongs_to :margin_image, :class_name => '::Refinery::Image'
        
    end
  end
end