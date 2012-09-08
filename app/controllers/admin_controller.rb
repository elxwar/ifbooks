class AdminController < ApplicationController
  before_filter :find_page
  before_filter :authorize

  def index
    @no_ifgroups = Ifgroup.count
  end

  protected
  def find_page
    @page = ::Refinery::Page.where(:link_url => "/ifgroups").first
  end

  def authorize
    unless Ifgroup.find_by_id(session[:ifgroup_id])
      redirect_to group_login_path, notice: 'Please log in to see this page', layout: nil
    end
  end
end
