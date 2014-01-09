class ClientmailsController < ApplicationController
  before_action :set_clientmail, only: [:show, :edit, :update, :destroy]


  # GET /clientmails
  # GET /clientmails.json
  def index
    @clientmails = Clientmail.all
  end

  # GET /clientmails/1
  # GET /clientmails/1.json
  def show
  end

  # GET /clientmails/new
  def new
    @clientmail = Clientmail.new
  end

  # GET /clientmails/1/edit
  def edit
  end

  # POST /clientmails
  # POST /clientmails.json
  def create
    @clientmail = Clientmail.new(clientmail_params)

    respond_to do |format|
      if @clientmail.save
        format.html { redirect_to "http://localhost:3000", notice: 'Votre mail a bien été enregistré.' }
        format.json { redirect_to "http://localhost:3000", status: :created, location: @clientmail }
      else
        format.html { redirect_to "http://localhost:3000", notice: 'Ce mail existe déjà ou il est invalide.'  }
        format.json { render json: @clientmail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientmails/1
  # PATCH/PUT /clientmails/1.json
  def update
    respond_to do |format|
      if @clientmail.update(clientmail_params)
        format.html { redirect_to @clientmail, notice: 'Clientmail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @clientmail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientmails/1
  # DELETE /clientmails/1.json
  def destroy
    @clientmail.destroy
    respond_to do |format|
      format.html { redirect_to clientmails_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clientmail
      @clientmail = Clientmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clientmail_params
      params.require(:clientmail).permit(:mail)
    end
end
