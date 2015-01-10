class SingleActionsController < ApplicationController
  before_action :set_single_action, only: [:show, :edit, :update, :destroy]
  respond_to :json
  # GET /single_actions
  # GET /single_actions.json
  def index
    @single_actions = SingleAction.all
  end

  # GET /single_actions/1
  # GET /single_actions/1.json
  def show
  end

  # GET /single_actions/new
  def new
    @single_action = SingleAction.new
  end

  # GET /single_actions/1/edit
  def edit
  end

  # POST /single_actions
  # POST /single_actions.json
  def create
    @single_action = SingleAction.new(single_action_params)

    respond_to do |format|
      if @single_action.save
        format.html { redirect_to @single_action, notice: 'Single action was successfully created.' }
        format.json { render :show, status: :created, location: @single_action }
      else
        format.html { render :new }
        format.json { render json: @single_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /single_actions/1
  # PATCH/PUT /single_actions/1.json
  def update
    respond_to do |format|
      if @single_action.update(single_action_params)
        format.html { redirect_to @single_action, notice: 'Single action was successfully updated.' }
        format.json { render :show, status: :ok, location: @single_action }
      else
        format.html { render :edit }
        format.json { render json: @single_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /single_actions/1
  # DELETE /single_actions/1.json
  def destroy
    @single_action.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_single_action
      @single_action = SingleAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def single_action_params
      params.require(:single_action).permit(:name, :is_complete, :due_date, :user_id, :points)
    end
end
