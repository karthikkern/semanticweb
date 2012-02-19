class ContainsController < ApplicationController
  # GET /contains
  # GET /contains.json
  def index
    @contains = Contain.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @contains }
    end
  end

  # GET /contains/1
  # GET /contains/1.json
  def show
    @contain = Contain.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @contain }
    end
  end

  # GET /contains/new
  # GET /contains/new.json
  def new
    @contain = Contain.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @contain }
    end
  end

  # GET /contains/1/edit
  def edit
    @contain = Contain.find(params[:id])
  end

  # POST /contains
  # POST /contains.json
  def create
    @contain = Contain.new(params[:contain])

    respond_to do |format|
      if @contain.save
        format.html { redirect_to @contain, :notice => 'Contain was successfully created.' }
        format.json { render :json => @contain, :status => :created, :location => @contain }
      else
        format.html { render :action => "new" }
        format.json { render :json => @contain.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contains/1
  # PUT /contains/1.json
  def update
    @contain = Contain.find(params[:id])

    respond_to do |format|
      if @contain.update_attributes(params[:contain])
        format.html { redirect_to @contain, :notice => 'Contain was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @contain.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contains/1
  # DELETE /contains/1.json
  def destroy
    @contain = Contain.find(params[:id])
    @contain.destroy

    respond_to do |format|
      format.html { redirect_to contains_url }
      format.json { head :no_content }
    end
  end
end
