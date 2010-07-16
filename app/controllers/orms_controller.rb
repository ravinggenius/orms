class OrmsController < ApplicationController
  # GET /orms
  # GET /orms.xml
  def index
    @orms = Orm.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @orms }
    end
  end

  # GET /orms/1
  # GET /orms/1.xml
  def show
    @orm = Orm.get(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @orm }
    end
  end

  # GET /orms/new
  # GET /orms/new.xml
  def new
    @orm = Orm.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @orm }
    end
  end

  # GET /orms/1/edit
  def edit
    @orm = Orm.get(params[:id])
  end

  # POST /orms
  # POST /orms.xml
  def create
    @orm = Orm.new(params[:orm])

    respond_to do |format|
      if @orm.save
        format.html { redirect_to(@orm, :notice => 'Orm was successfully created.') }
        format.xml  { render :xml => @orm, :status => :created, :location => @orm }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @orm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /orms/1
  # PUT /orms/1.xml
  def update
    @orm = Orm.get(params[:id])

    respond_to do |format|
      if @orm.update(params[:orm])
        format.html { redirect_to(@orm, :notice => 'Orm was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @orm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /orms/1
  # DELETE /orms/1.xml
  def destroy
    @orm = Orm.get(params[:id])
    @orm.destroy

    respond_to do |format|
      format.html { redirect_to(orms_url) }
      format.xml  { head :ok }
    end
  end
end
