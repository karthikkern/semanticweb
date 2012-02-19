class RefersController < ApplicationController
  # GET /refers
  # GET /refers.json
  def index
    @refers = Refer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @refers }
    end
  end

  # GET /refers/1
  # GET /refers/1.json
  def show
    @refer = Refer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @refer }
    end
  end

  # GET /refers/new
  # GET /refers/new.json
  def new
    @refer = Refer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @refer }
    end
  end

  # GET /refers/1/edit
  def edit
    @refer = Refer.find(params[:id])
  end

  # POST /refers
  # POST /refers.json
  def create
    @refer = Refer.new(params[:refer])

    respond_to do |format|
      if @refer.save
        format.html { redirect_to @refer, :notice => 'Refer was successfully created.' }
        format.json { render :json => @refer, :status => :created, :location => @refer }
      else
        format.html { render :action => "new" }
        format.json { render :json => @refer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /refers/1
  # PUT /refers/1.json
  def update
    @refer = Refer.find(params[:id])

    respond_to do |format|
      if @refer.update_attributes(params[:refer])
        format.html { redirect_to @refer, :notice => 'Refer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @refer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /refers/1
  # DELETE /refers/1.json
  def destroy
    @refer = Refer.find(params[:id])
    @refer.destroy

    respond_to do |format|
      format.html { redirect_to refers_url }
      format.json { head :no_content }
    end
  end
end
