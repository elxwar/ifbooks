require 'spec_helper'

module Refinery
  module Subscriptions
    describe Subscription do
      describe "validations" do
        subject do
          FactoryGirl.create(:subscription)
        end

        it { should be_valid }
        its(:errors) { should be_empty }
      end
    end
  end
end
