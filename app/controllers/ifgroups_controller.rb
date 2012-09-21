class IfgroupsController < ApplicationController

  before_filter :authorize, :find_all_books, :find_page, :find_all_ifgroups
  skip_before_filter :authorize, only: [:register, :new, :create]

  def index

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ifgroups }
    end
  end

  def show
    @ifgroup = Ifgroup.find(params[:id])
    @book = @ifgroup.book
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ifgroup }
    end
  end

  # GET /ifgroups/new
  # GET /ifgroups/new.json
  def new
    @ifgroup = Ifgroup.new
    @book = @books.find(params[:id])
    MyLog.debug "ifgroup id = "
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ifgroup }
    end
  end

  def register
    @members = ::Refinery::Members::Member.order('position ASC')
    @book = @books.find(params[:id])
    new
  end

  # GET /ifgroups/1/edit
  def edit
    @ifgroup = Ifgroup.find(params[:id])
    @book = @ifgroup.book
  end

  # POST /ifgroups
  # POST /ifgroups.json
  def create
    @ifgroup = Ifgroup.new(params[:ifgroup])
    #@book = @books.find(params[:id])
    respond_to do |format|
      if @ifgroup.save
        MyLog.debug "SAVED!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        format.html { redirect_to '/welcome', notice: "Ifgroup, #{@ifgroup.group_name}, was successfully created." }
        format.json { render json: @ifgroup, status: :created, location: @ifgroup }
      else
        #format.html { render action: "register"}
        format.html {redirect_to main_app.register_path(:id => @ifgroup.book_id), notice: 'ooops!'}
        format.json { render json: @ifgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ifgroups/1
  # PUT /ifgroups/1.json
  def update
    @ifgroup = Ifgroup.find(params[:id])

    respond_to do |format|
      if @ifgroup.update_attributes(params[:ifgroup])
        format.html { redirect_to @ifgroup, notice: "Ifgroup, #{@ifgroup.group_name}, was successfully updated." }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ifgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @ifgroup = Ifgroup.find(params[:id])
    @ifgroup.destroy

    respond_to do |format|
      format.html { redirect_to ifgroups_url }
      format.json { head :no_content }
    end
  end

  protected

  def find_page
    @page = ::Refinery::Page.where(:link_url => "/ifgroups").first
  end

end
