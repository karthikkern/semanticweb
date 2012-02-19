class DescribesController < ApplicationController
  # GET /describes
  # GET /describes.json
  def index
    @describes = Describe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @describes }
    end
  end

  # GET /describes/1
  # GET /describes/1.json
  def show
    @describe = Describe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @describe }
    end
  end

  # GET /describes/new
  # GET /describes/new.json
  def new
    @describe = Describe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @describe }
    end
  end

  # GET /describes/1/edit
  def edit
    @describe = Describe.find(params[:id])
  end

  # POST /describes
  # POST /describes.json
  def create
    @describe = Describe.new(params[:describe])

    respond_to do |format|
      if @describe.save
        format.html { redirect_to @describe, :notice => 'Describe was successfully created.' }
        format.json { render :json => @describe, :status => :created, :location => @describe }
      else
        format.html { render :action => "new" }
        format.json { render :json => @describe.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /describes/1
  # PUT /describes/1.json
  def update
    @describe = Describe.find(params[:id])

    respond_to do |format|
      if @describe.update_attributes(params[:describe])
        format.html { redirect_to @describe, :notice => 'Describe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @describe.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /describes/1
  # DELETE /describes/1.json
  def destroy
    @describe = Describe.find(params[:id])
    @describe.destroy

    respond_to do |format|
      format.html { redirect_to describes_url }
      format.json { head :no_content }
    end
  end
end
