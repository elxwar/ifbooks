module Refinery
  module Ifgroups
    class Ifgroup < Refinery::Core::BaseModel
      self.table_name = 'refinery_ifgroups'
      attr_accessible :title, :first_name, :last_name, :school_name, :address1, :address2, :address3, :town, :county, :post_code, :teacher_email, :group1_email, :group2_email, :invoice_to, :position
      acts_as_indexed :fields => [:title, :first_name, :last_name, :school_name, :address1, :address2, :address3, :town, :county, :post_code, :teacher_email, :group1_email, :group2_email, :invoice_to]

      validates :title, :presence => true, :uniqueness => true
              
    end
  end
end
