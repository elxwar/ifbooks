module Refinery
  module Ifgroups
    module Admin
      class IfgroupsController < ::Refinery::AdminController

        crudify :'refinery/ifgroups/ifgroup', :xhr_paging => true

      end
    end
  end
end
