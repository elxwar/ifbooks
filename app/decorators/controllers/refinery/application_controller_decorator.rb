ApplicationController.class_eval do

  protected

  def find_all_books
    @books = ::Refinery::Books::Book.order('position ASC')
  end

  def find_all_ifgroups
    @ifgroups = Ifgroup.order('position ASC')
  end

  def authorize
    unless Ifgroup.find_by_id(session[:ifgroup_id])
      redirect_to group_login_path, notice: 'Please log in to see this page', layout: nil
    end
  end

end