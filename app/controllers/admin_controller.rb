class AdminController < ApplicationController
  before_filter :find_page
  def index
    @no_ifgroups = Ifgroup.count
  end

  protected
  def find_page
    @page = ::Refinery::Page.where(:link_url => "/ifgroups").first
  end
end
