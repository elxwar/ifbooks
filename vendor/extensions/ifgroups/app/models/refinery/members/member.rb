module Refinery
  module Members
    class Member < Refinery::Core::BaseModel
      self.table_name = 'refinery_members'
      #belongs_to :ifgroup, :class_name => '::Refinery::Ifgroups::Ifgroup'
      has_many :memberships, :as => :groupable
      has_many :ifgroups, :class_name => '::Refinery::Ifgroups::Ifgroup', :through => :memberships
      attr_accessible :name, :email, :ifgroup_id, :book_id, :position
      acts_as_indexed :fields => [:name, :email]

      validates :name, :presence => true, :uniqueness => true
              
    end
  end
end
