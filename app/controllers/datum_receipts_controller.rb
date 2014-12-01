class DatumReceiptsController < ApplicationController
  before_action :set_datum_receipt, only: [:show, :edit, :update, :destroy]

  # GET /datum_receipts
  # GET /datum_receipts.json
  def index
    @datum_receipts = DatumReceipt.all
  end

  # GET /datum_receipts/1
  # GET /datum_receipts/1.json
  def show
  end

  # GET /datum_receipts/new
  def new
    @datum_receipt = DatumReceipt.new
  end

  # GET /datum_receipts/1/edit
  def edit
  end

  # POST /datum_receipts
  # POST /datum_receipts.json
  def create
    @datum_receipt = DatumReceipt.new(datum_receipt_params)

    respond_to do |format|
      if @datum_receipt.save
        format.html { redirect_to @datum_receipt, notice: 'Datum receipt was successfully created.' }
        format.json { render :show, status: :created, location: @datum_receipt }
      else
        format.html { render :new }
        format.json { render json: @datum_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datum_receipts/1
  # PATCH/PUT /datum_receipts/1.json
  def update
    respond_to do |format|
      if @datum_receipt.update(datum_receipt_params)
        format.html { redirect_to @datum_receipt, notice: 'Datum receipt was successfully updated.' }
        format.json { render :show, status: :ok, location: @datum_receipt }
      else
        format.html { render :edit }
        format.json { render json: @datum_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datum_receipts/1
  # DELETE /datum_receipts/1.json
  def destroy
    @datum_receipt.destroy
    respond_to do |format|
      format.html { redirect_to datum_receipts_url, notice: 'Datum receipt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datum_receipt
      @datum_receipt = DatumReceipt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def datum_receipt_params
      params.require(:datum_receipt).permit(:amount, :time_stamp, :data_id)
    end
end
