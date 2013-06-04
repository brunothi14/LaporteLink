class TracteursController < ApplicationController
  # GET /tracteurs
  # GET /tracteurs.json
  def index
    @tracteurs = Tracteur.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tracteurs }
    end
  end

  # GET /tracteurs/1
  # GET /tracteurs/1.json
  def show
    @tracteur = Tracteur.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tracteur }
    end
  end

  # GET /tracteurs/new
  # GET /tracteurs/new.json
  def new
    @tracteur = Tracteur.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tracteur }
    end
  end

  # GET /tracteurs/1/edit
  def edit
    @tracteur = Tracteur.find(params[:id])
  end

  # POST /tracteurs
  # POST /tracteurs.json
  def create
    @tracteur = Tracteur.new(params[:tracteur])

    respond_to do |format|
      if @tracteur.save
        format.html { redirect_to @tracteur, notice: 'Tracteur was successfully created.' }
        format.json { render json: @tracteur, status: :created, location: @tracteur }
      else
        format.html { render action: "new" }
        format.json { render json: @tracteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tracteurs/1
  # PUT /tracteurs/1.json
  def update
    @tracteur = Tracteur.find(params[:id])

    respond_to do |format|
      if @tracteur.update_attributes(params[:tracteur])
        format.html { redirect_to @tracteur, notice: 'Tracteur was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tracteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tracteurs/1
  # DELETE /tracteurs/1.json
  def destroy
    @tracteur = Tracteur.find(params[:id])
    @tracteur.destroy

    respond_to do |format|
      format.html { redirect_to tracteurs_url }
      format.json { head :no_content }
    end
  end
end
