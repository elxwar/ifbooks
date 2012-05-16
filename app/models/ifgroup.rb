class Ifgroup < ActiveRecord::Base
  self.table_name = 'refinery_ifgroups'
  attr_accessible :address1, :address2, :address3, :county, :first_name, :group1_email, :group2_email, :invoice_to, :last_name, :post_code, :school_name, :teacher_email, :title, :town, :position

  validates :school_name, :presence => true, :uniqueness => true
end
