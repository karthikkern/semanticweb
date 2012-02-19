class WritesController < ApplicationController
  # GET /writes
  # GET /writes.json
  def index
    @writes = Write.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @writes }
    end
  end

  # GET /writes/1
  # GET /writes/1.json
  def show
    @write = Write.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @write }
    end
  end

  # GET /writes/new
  # GET /writes/new.json
  def new
    @write = Write.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @write }
    end
  end

  # GET /writes/1/edit
  def edit
    @write = Write.find(params[:id])
  end

  # POST /writes
  # POST /writes.json
  def create
    @write = Write.new(params[:write])

    respond_to do |format|
      if @write.save
        format.html { redirect_to @write, :notice => 'Write was successfully created.' }
        format.json { render :json => @write, :status => :created, :location => @write }
      else
        format.html { render :action => "new" }
        format.json { render :json => @write.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /writes/1
  # PUT /writes/1.json
  def update
    @write = Write.find(params[:id])

    respond_to do |format|
      if @write.update_attributes(params[:write])
        format.html { redirect_to @write, :notice => 'Write was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @write.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /writes/1
  # DELETE /writes/1.json
  def destroy
    @write = Write.find(params[:id])
    @write.destroy

    respond_to do |format|
      format.html { redirect_to writes_url }
      format.json { head :no_content }
    end
  end
end
