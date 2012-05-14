module Refinery
  module Ifgroups
    class IfgroupsController < ::ApplicationController

      before_filter :find_all_ifgroups
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @ifgroup in the line below:
        present(@page)
      end

      def show
        @ifgroup = Ifgroup.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @ifgroup in the line below:
        present(@page)
      end

    protected

      def find_all_ifgroups
        @ifgroups = Ifgroup.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/ifgroups").first
      end

    end
  end
end
