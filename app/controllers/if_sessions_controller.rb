class IfSessionsController < ApplicationController

  before_filter :find_page

  def new
  end

  def create
    ifgroup = Ifgroup.find_by_group_name(params[:group_name])
    if ifgroup and ifgroup.authenticate(params[:password])
      session[:ifgroup_id] = ifgroup.id
      redirect_to admin_url
    else
      redirect_to group_login_url, alert: "Invalid ifgroup/password combination"
    end
  end

  def destroy
    session[:ifgroup_id] = nil
    redirect_to group_login_url, notice: "You have logged out"
    #respond_to do |format|
    #  format.html {render :layout => nil}
    #end

  end

  protected

  def find_page
    @page = ::Refinery::Page.where(:link_url => "/ifgroups").first
  end
end
