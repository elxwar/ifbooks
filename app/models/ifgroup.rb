class Ifgroup < ActiveRecord::Base
  self.table_name = 'refinery_ifgroups'
  has_many :memberships
  has_many :books, :class_name => '::Refinery::Books::Book', :through => :memberships, :source => :groupable, :source_type => 'Book'
  has_many :members, :class_name => '::Refinery::Members::Member', :through => :memberships, :source => :groupable, :source_type => 'Member'
  attr_accessible :group_name, :password, :password_confirmation, :title, :first_name, :last_name, :school_name, :address1, :address2, :address3, :town, :county, :post_code, :teacher_email, :group1_email, :group2_email, :invoice_to, :position, :book_id
  acts_as_indexed :fields => [:group_name, :school_name, :address1, :address2, :address3, :town, :county, :post_code, :teacher_email, :group1_email, :group2_email, :invoice_to]

  validates :group_name, :presence => true, :uniqueness => true
  validates :school_name, :presence => true
  #validates :book_id, :presence => true
  has_secure_password
end
