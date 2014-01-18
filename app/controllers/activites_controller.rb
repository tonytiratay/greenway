class ActivitesController < ApplicationController
  before_action :set_activite, only: [:show, :edit, :update, :destroy]

  # GET /activites
  # GET /activites.json
  def index
    @activites = Activite.all
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end
  end

  # GET /activites/1
  # GET /activites/1.json
  def show
  end

  # GET /activites/new
  def new
    @activite = Activite.new
  end

  # GET /activites/1/edit
  def edit
  end

  # POST /activites
  # POST /activites.json
  def create
    @activite = Activite.new(activite_params)

    respond_to do |format|
      if @activite.save
        format.html { redirect_to @activite, notice: 'Activite was successfully created.' }
        format.json { render action: 'show', status: :created, location: @activite }
      else
        format.html { render action: 'new' }
        format.json { render json: @activite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activites/1
  # PATCH/PUT /activites/1.json
  def update
    respond_to do |format|
      if @activite.update(activite_params)
        format.html { redirect_to @activite, notice: 'Activite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @activite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activites/1
  # DELETE /activites/1.json
  def destroy
    @activite.destroy
    respond_to do |format|
      format.html { redirect_to activites_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activite
      @activite = Activite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activite_params
      params.require(:activite).permit(:titre, :description, :typeactivite, :prix, :pays, :adresse, :datedebut, :datefin)
    end
end
