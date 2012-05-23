module Refinery
  module Ifgroups
    class Ifgroup < Refinery::Core::BaseModel
      self.table_name = 'refinery_ifgroups'
      has_many :members, :class_name => '::Refinery::Members::Member'
      attr_accessible :title, :first_name, :last_name, :school_name, :address1, :address2, :address3, :town, :county, :post_code, :teacher_email, :group1_email, :group2_email, :invoice_to, :position
      acts_as_indexed :fields => [:school_name, :address1, :address2, :address3, :town, :county, :post_code, :teacher_email, :group1_email, :group2_email, :invoice_to]

      validates :school_name, :presence => true, :uniqueness => true
              
    end
  end
end
