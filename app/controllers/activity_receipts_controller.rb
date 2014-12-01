class ActivityReceiptsController < ApplicationController
  before_action :set_activity_receipt, only: [:show, :edit, :update, :destroy]

  # GET /activity_receipts
  # GET /activity_receipts.json
  def index
    @activity_receipts = ActivityReceipt.all
  end

  # GET /activity_receipts/1
  # GET /activity_receipts/1.json
  def show
  end

  # GET /activity_receipts/new
  def new
    @activity_receipt = ActivityReceipt.new
  end

  # GET /activity_receipts/1/edit
  def edit
  end

  # POST /activity_receipts
  # POST /activity_receipts.json
  def create
    @activity_receipt = ActivityReceipt.new(activity_receipt_params)

    respond_to do |format|
      if @activity_receipt.save
        format.html { redirect_to @activity_receipt, notice: 'Activity receipt was successfully created.' }
        format.json { render :show, status: :created, location: @activity_receipt }
      else
        format.html { render :new }
        format.json { render json: @activity_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_receipts/1
  # PATCH/PUT /activity_receipts/1.json
  def update
    respond_to do |format|
      if @activity_receipt.update(activity_receipt_params)
        format.html { redirect_to @activity_receipt, notice: 'Activity receipt was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_receipt }
      else
        format.html { render :edit }
        format.json { render json: @activity_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_receipts/1
  # DELETE /activity_receipts/1.json
  def destroy
    @activity_receipt.destroy
    respond_to do |format|
      format.html { redirect_to activity_receipts_url, notice: 'Activity receipt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_receipt
      @activity_receipt = ActivityReceipt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_receipt_params
      params.require(:activity_receipt).permit(:amount, :activity_id, :time_stamp)
    end
end
