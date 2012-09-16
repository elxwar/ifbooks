ApplicationController.class_eval do

  protected

  def find_all_books
    @books = ::Refinery::Books::Book.order('position ASC')
  end

  def find_all_ifgroups
    @ifgroups = Ifgroup.order('position ASC')
  end

  def authorize
    if Ifgroup.find_by_id(session[:ifgroup_id]) and Ifgroup.find_by_id(session[:ifgroup_id]).id.to_s == params[:id]

      #flash[:notice] = Ifgroup.find_by_id(session[:ifgroup_id]).id.to_s + ' ' + params[:id]

    else

      redirect_to group_login_path, notice: 'Please log in to see this page', layout: nil

    end
  end

end