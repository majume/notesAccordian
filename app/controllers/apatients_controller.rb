class ApatientsController < ApplicationController
  before_action :set_apatient, only: [:show, :edit, :update, :destroy]

  # GET /apatients
  # GET /apatients.json
  def index
    @apatients = Apatient.all
    @apatient = Apatient.new
  end

  # GET /apatients/1
  # GET /apatients/1.json
  def show
  end

  # GET /apatients/new
  def new
    @apatient = Apatient.new
  end

  # GET /apatients/1/edit
  def edit
  end

  # POST /apatients
  # POST /apatients.json
  def create
    @apatient = Apatient.new(apatient_params)

    respond_to do |format|
      if @apatient.save
        format.html { redirect_to @apatient, notice: 'Apatient was successfully created.' }
        format.js {}
        format.json { render action: 'show', status: :created, location: @apatient }
      else
        format.html { render action: 'new' }
        format.json { render json: @apatient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apatients/1
  # PATCH/PUT /apatients/1.json
  def update
    respond_to do |format|
      if @apatient.update(apatient_params)
        format.html { redirect_to @apatient, notice: 'Apatient was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @apatient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apatients/1
  # DELETE /apatients/1.json
  def destroy
    @apatient.destroy
    respond_to do |format|
      format.html { redirect_to apatients_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apatient
      @apatient = Apatient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apatient_params
      params.require(:apatient).permit(:first_name, :last_name, :c_number, :date_of_admission)
    end
end
