class BooksController < ::ApplicationController
  before_filter :find_all_books
  before_filter :find_page
  before_filter :authorize

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @book in the line below:
    present(@page)
  end

  def show
    @book = Book.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @book in the line below:
    present(@page)
  end

  #def new
  #  @ifgroup = Ifgroup.new
  #  #@book = @books.first
  #
  #  respond_to do |format|
  #    format.html # new.html.erb
  #    format.json { render json: @ifgroup }
  #  end
  #end

  def register
    #@members = ::Refinery::Members::Member.order('position ASC')
    @book = @books.find(params[:id])

  end

  protected

  def find_all_books
    @books = Book.order('position ASC')
  end

  def find_page
    @page = ::Refinery::Page.where(:link_url => "/books").first
  end

  def authorize
    unless Ifgroup.find_by_id(session[:ifgroup_id])
      redirect_to group_login_path, notice: 'Please log in to see this page', layout: nil
    end
  end

end