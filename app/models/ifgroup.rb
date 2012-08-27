class Ifgroup < ActiveRecord::Base

  self.table_name = 'refinery_ifgroups'

  #has_many :subscriptions, :dependent => :destroy
  belongs_to :book, :class_name => '::Book'
  has_many :members, :class_name => '::Member'
  accepts_nested_attributes_for :members
  #accepts_nested_attributes_for :books



  attr_accessible :group_name, :password, :password_confirmation, :title, :first_name, :last_name, :school_name, :address1, :address2, :address3, :town, :county, :post_code, :teacher_email, :group1_email, :group2_email, :invoice_to, :position, :members_attributes, :book_id #, :books_attributes
  acts_as_indexed :fields => [:group_name, :school_name, :address1, :address2, :address3, :town, :county, :post_code, :teacher_email, :group1_email, :group2_email, :invoice_to]

  validates :group_name, :presence => true, :uniqueness => true
  validates :school_name, :presence => true
  has_secure_password

end
