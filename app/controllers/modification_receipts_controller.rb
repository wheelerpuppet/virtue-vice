class ModificationReceiptsController < ApplicationController
  before_action :set_modification_receipt, only: [:show, :edit, :update, :destroy]

  # GET /modification_receipts
  # GET /modification_receipts.json
  def index
    @modification_receipts = ModificationReceipt.all
  end

  # GET /modification_receipts/1
  # GET /modification_receipts/1.json
  def show
  end

  # GET /modification_receipts/new
  def new
    @modification_receipt = ModificationReceipt.new
  end

  # GET /modification_receipts/1/edit
  def edit
  end

  # POST /modification_receipts
  # POST /modification_receipts.json
  def create
    @modification_receipt = ModificationReceipt.new(modification_receipt_params)

    respond_to do |format|
      if @modification_receipt.save
        format.html { redirect_to @modification_receipt, notice: 'Modification receipt was successfully created.' }
        format.json { render :show, status: :created, location: @modification_receipt }
      else
        format.html { render :new }
        format.json { render json: @modification_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modification_receipts/1
  # PATCH/PUT /modification_receipts/1.json
  def update
    respond_to do |format|
      if @modification_receipt.update(modification_receipt_params)
        format.html { redirect_to @modification_receipt, notice: 'Modification receipt was successfully updated.' }
        format.json { render :show, status: :ok, location: @modification_receipt }
      else
        format.html { render :edit }
        format.json { render json: @modification_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modification_receipts/1
  # DELETE /modification_receipts/1.json
  def destroy
    @modification_receipt.destroy
    respond_to do |format|
      format.html { redirect_to modification_receipts_url, notice: 'Modification receipt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modification_receipt
      @modification_receipt = ModificationReceipt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def modification_receipt_params
      params.require(:modification_receipt).permit(:new_points, :activity_id, :time_stamp)
    end
end
