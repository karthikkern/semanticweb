class ListensController < ApplicationController
  # GET /listens
  # GET /listens.json
  def index
    @listens = Listen.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @listens }
    end
  end

  # GET /listens/1
  # GET /listens/1.json
  def show
    @listen = Listen.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @listen }
    end
  end

  # GET /listens/new
  # GET /listens/new.json
  def new
    @listen = Listen.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @listen }
    end
  end

  # GET /listens/1/edit
  def edit
    @listen = Listen.find(params[:id])
  end

  # POST /listens
  # POST /listens.json
  def create
    @listen = Listen.new(params[:listen])

    respond_to do |format|
      if @listen.save
        format.html { redirect_to @listen, :notice => 'Listen was successfully created.' }
        format.json { render :json => @listen, :status => :created, :location => @listen }
      else
        format.html { render :action => "new" }
        format.json { render :json => @listen.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /listens/1
  # PUT /listens/1.json
  def update
    @listen = Listen.find(params[:id])

    respond_to do |format|
      if @listen.update_attributes(params[:listen])
        format.html { redirect_to @listen, :notice => 'Listen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @listen.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /listens/1
  # DELETE /listens/1.json
  def destroy
    @listen = Listen.find(params[:id])
    @listen.destroy

    respond_to do |format|
      format.html { redirect_to listens_url }
      format.json { head :no_content }
    end
  end
end
