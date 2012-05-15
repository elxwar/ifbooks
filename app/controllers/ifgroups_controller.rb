class IfgroupsController < ApplicationController

  #before_filter :find_all_ifgroups
  before_filter :find_page

  # GET /ifgroups
  # GET /ifgroups.json
  def index
    @ifgroups = Ifgroup.all

    respond_to do |format|

      format.html # index.html.erb
      format.json { render json: @ifgroups }
    end
  end

  # GET /ifgroups/1
  # GET /ifgroups/1.json
  def show
    @ifgroup = Ifgroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ifgroup }
    end
  end

  # GET /ifgroups/new
  # GET /ifgroups/new.json
  def new
    @ifgroup = Ifgroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ifgroup }
    end
  end

  # GET /ifgroups/1/edit
  def edit
    @ifgroup = Ifgroup.find(params[:id])

  end

  # POST /ifgroups
  # POST /ifgroups.json
  def create
    @ifgroup = Ifgroup.new(params[:ifgroup])

    respond_to do |format|
      if @ifgroup.save
        format.html { redirect_to @ifgroup, notice: 'Ifgroup was successfully created.' }
        format.json { render json: @ifgroup, status: :created, location: @ifgroup }
      else
        format.html { render action: "new" }
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
        format.html { redirect_to @ifgroup, notice: 'Ifgroup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ifgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ifgroups/1
  # DELETE /ifgroups/1.json
  def destroy
    @ifgroup = Ifgroup.find(params[:id])
    @ifgroup.destroy

    respond_to do |format|
      format.html { redirect_to ifgroups_url }
      format.json { head :no_content }
    end
  end

  protected

  def find_all_ifgroups
    @ifgroups = Ifgroup.order('position ASC')
  end

  def find_page
    @page = ::Refinery::Page.where(:link_url => "/ifgroups").first
  end
end
