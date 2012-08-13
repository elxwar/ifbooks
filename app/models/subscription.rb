class Subscription < ActiveRecord::Base
  self.table_name = 'refinery_subscriptions'
  belongs_to :book #, :class_name => '::Refinery::Books::Book'
  belongs_to :ifgroup



  # def title was created automatically because you didn't specify a string field
  # when you ran the refinery:engine generator. <3 <3 Refinery CMS.
  def title
    "Override def title in vendor/extensions/subscriptions/app/models/refinery/subscriptions/subscription.rb"
  end

end