class BusinessModelsController < ApplicationController
  before_action :set_business_model, only: [:show, :edit, :update, :destroy]

  # GET /business_models
  # GET /business_models.json
  def index
    @business_models = BusinessModel.all
  end

  # GET /business_models/1
  # GET /business_models/1.json
  def show
  end

  # GET /business_models/new
  def new
    @business_model = BusinessModel.new
  end

  # GET /business_models/1/edit
  def edit
  end

  # POST /business_models
  # POST /business_models.json
  def create
    @business_model = BusinessModel.new(business_model_params)

    respond_to do |format|
      if @business_model.save
        format.html { redirect_to @business_model, notice: 'Business model was successfully created.' }
        format.json { render :show, status: :created, location: @business_model }
      else
        format.html { render :new }
        format.json { render json: @business_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_models/1
  # PATCH/PUT /business_models/1.json
  def update
    respond_to do |format|
      if @business_model.update(business_model_params)
        format.html { redirect_to @business_model, notice: 'Business model was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_model }
      else
        format.html { render :edit }
        format.json { render json: @business_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_models/1
  # DELETE /business_models/1.json
  def destroy
    @business_model.destroy
    respond_to do |format|
      format.html { redirect_to business_models_url, notice: 'Business model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_model
      @business_model = BusinessModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_model_params
      params.require(:business_model).permit(:name)
    end
end
