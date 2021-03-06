class Member < ActiveRecord::Base
  self.table_name = 'refinery_members'
  belongs_to :ifgroup, :class_name => '::Ifgroup'  #, :class_name => '::Refinery::Ifgroups::Ifgroup'
  #belongs_to :book #, through :ifgroup

  attr_accessible :name, :email, :ifgroup_id, :book_id, :position
  acts_as_indexed :fields => [:name, :email]

  #validates :name, :presence => true, :uniqueness => true
end