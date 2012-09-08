
  class MembersController < ::ApplicationController

    before_filter :find_all_members
    before_filter :find_page
    before_filter :authorize

    def index
      #@members = ::Refinery::Members::Member.all
      # you can use meta fields from your model instead (e.g. browser_title)
      # by swapping @page for @member in the line below:
      present(@member)
    end

    def show
      @member = @members.find(params[:id])

      # you can use meta fields from your model instead (e.g. browser_title)
      # by swapping @page for @member in the line below:
      present(@page)
    end

    def new
      @member = ::Refinery::Members::Member.new
      #@book = @books.first

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @member }
      end
    end

    protected

    def find_all_members
      @members = ::Refinery::Members::Member.order('position ASC')
    end

    def find_page
      @page = ::Refinery::Page.where(:link_url => "/members").first
    end

=begin
    def find_all_books
      @books = ::Refinery::Books::Book.order('position ASC')
    end
=end

=begin
    def find_all_ifgroups
      @ifgroups = Ifgroup.order('position ASC')
    end
=end

    protected
    def authorize
      unless Ifgroup.find_by_id(session[:ifgroup_id])
        redirect_to group_login_path, notice: 'Please log in to see this page', layout: nil
      end
    end

  end

