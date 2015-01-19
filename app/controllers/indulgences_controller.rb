class IndulgencesController < ApplicationController
  before_action :set_indulgence, only: [:show, :edit, :update, :destroy]

  # GET /indulgences
  # GET /indulgences.json
  def index
    @indulgences = Indulgence.all
  end

  # GET /indulgences/1
  # GET /indulgences/1.json
  def show
  end

  # GET /indulgences/new
  def new
    @indulgence = Indulgence.new
  end

  # GET /indulgences/1/edit
  def edit
  end

  # POST /indulgences
  # POST /indulgences.json
  def create
    @indulgence = Indulgence.new(indulgence_params)

    respond_to do |format|
      if @indulgence.save
        format.html { redirect_to @indulgence, notice: 'Indulgence was successfully created.' }
        format.json { render :show, status: :created, location: @indulgence }
      else
        format.html { render :new }
        format.json { render json: @indulgence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indulgences/1
  # PATCH/PUT /indulgences/1.json
  def update
    respond_to do |format|
      if @indulgence.update(indulgence_params)
        format.html { redirect_to @indulgence, notice: 'Indulgence was successfully updated.' }
        format.json { render :show, status: :ok, location: @indulgence }
      else
        format.html { render :edit }
        format.json { render json: @indulgence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indulgences/1
  # DELETE /indulgences/1.json
  def destroy
    @indulgence.destroy
    respond_to do |format|
      format.html { redirect_to indulgences_url, notice: 'Indulgence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indulgence
      @indulgence = Indulgence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indulgence_params
      params.require(:indulgence).permit(:verb, :amount, :subject, :interval_id, :user_id, :points)
    end
end
