module Refinery
  module Subscriptions
    module Admin
      class SubscriptionsController < ::Refinery::AdminController

        crudify :'refinery/subscriptions/subscription', :xhr_paging => true

      end
    end
  end
end
