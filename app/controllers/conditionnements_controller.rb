# -*- coding: undecided -*-
class ConditionnementsController < ApplicationController
  # GET /conditionnements
  # GET /conditionnements.xml
  def index
    @conditionnements = Conditionnement.order("nom").where(:aliment_id => params[:aliment_id])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @conditionnements }
    end
  end

  # GET /conditionnements/1
  # GET /conditionnements/1.xml
  def show
    @conditionnement = Conditionnement.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @conditionnement }
    end
  end

  # GET /conditionnements/new
  # GET /conditionnements/new.xml
  def new

    @aliment = Aliment.find(params[:aliment_id])
    @conditionnement = @aliment.conditionnements.create

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @conditionnement }
    end
  end

  # GET /conditionnements/1/edit
  def edit
    @conditionnement = Conditionnement.find(params[:id])
  end

  # POST /conditionnements
  # POST /conditionnements.xml
  def create
    @conditionnement = Conditionnement.new(params[:conditionnement])

    respond_to do |format|
      if @conditionnement.save
        format.html { redirect_to(@conditionnement, :notice => 'Conditionnement was successfully created.') }
        format.xml  { render :xml => @conditionnement, :status => :created, :location => @conditionnement }
        
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @conditionnement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /conditionnements/1
  # PUT /conditionnements/1.xml
  def update
    @conditionnement = Conditionnement.find(params[:id])

    respond_to do |format|
      if @conditionnement.update_attributes(params[:conditionnement])
        format.html { redirect_to([@conditionnement.aliment, @conditionnement], :notice => 'Conditionnement was successfully updated.') }
        format.xml  { head :ok }
        
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @conditionnement.errors, :status => :unprocessable_entity }
      end
    end
  end

  def plus
    @conditionnement = Conditionnement.find(params[:id])
    @conditionnement.plus

  end
  
  def moins
    @conditionnement = Conditionnement.find(params[:id])
    @conditionnement.moins

  end

  # DELETE /conditionnements/1
  # DELETE /conditionnements/1.xml
  def destroy
    @conditionnement = Conditionnement.find(params[:id])
    @conditionnement.destroy

    respond_to do |format|
      format.html { redirect_to(aliment_conditionnements_url) }
      format.xml  { head :ok }
    end
  end
end
