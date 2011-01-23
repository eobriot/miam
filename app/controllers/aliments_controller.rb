class AlimentsController < ApplicationController
  # GET /aliments
  # GET /aliments.xml
  def index
    @aliments = Aliment.all :order =>:nom

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @aliments }
    end
  end

  # GET /aliments/1
  # GET /aliments/1.xml
  def show
    @aliment = Aliment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @aliment }
    end
  end

  # GET /aliments/new
  # GET /aliments/new.xml
  def new
    @aliment = Aliment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @aliment }
    end
  end

  # GET /aliments/1/edit
  def edit
    @aliment = Aliment.find(params[:id])
  end

  # POST /aliments
  # POST /aliments.xml
  def create
    @aliment = Aliment.new(params[:aliment])

    respond_to do |format|
      if @aliment.save
        format.html { redirect_to(@aliment, :notice => 'Aliment was successfully created.') }
        format.xml  { render :xml => @aliment, :status => :created, :location => @aliment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @aliment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /aliments/1
  # PUT /aliments/1.xml
  def update
    @aliment = Aliment.find(params[:id])

    respond_to do |format|
      if @aliment.update_attributes(params[:aliment])
        format.html { redirect_to(@aliment, :notice => 'Aliment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @aliment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /aliments/1
  # DELETE /aliments/1.xml
  def destroy
    @aliment = Aliment.find(params[:id])
    @aliment.destroy

    respond_to do |format|
      format.html { redirect_to(aliments_url) }
      format.xml  { head :ok }
    end
  end
end
