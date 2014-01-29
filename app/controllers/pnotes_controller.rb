class PnotesController < ApplicationController
  before_action :set_pnote, only: [:show, :edit, :update, :destroy]

  # GET /pnotes
  # GET /pnotes.json
  def index
    @pnotes = Pnote.all
  end

  # GET /pnotes/1
  # GET /pnotes/1.json
  def show
  end

  # GET /pnotes/new
  def new
    @pnote = Pnote.new
  end

  # GET /pnotes/1/edit
  def edit
  end

  # POST /pnotes
  # POST /pnotes.json
  def create
    @pnote = Pnote.new(pnote_params)

    respond_to do |format|
      if @pnote.save
        format.html { redirect_to @pnote, notice: 'Pnote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pnote }
      else
        format.html { render action: 'new' }
        format.json { render json: @pnote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pnotes/1
  # PATCH/PUT /pnotes/1.json
  def update
    respond_to do |format|
      if @pnote.update(pnote_params)
        format.html { redirect_to @pnote, notice: 'Pnote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pnote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pnotes/1
  # DELETE /pnotes/1.json
  def destroy
    @pnote.destroy
    respond_to do |format|
      format.html { redirect_to pnotes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pnote
      @pnote = Pnote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pnote_params
      params.require(:pnote).permit(:para1, :para2, :para3, :patient_id)
    end
end
