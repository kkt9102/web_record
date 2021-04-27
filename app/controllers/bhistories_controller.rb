class BhistoriesController < ApplicationController
  before_action :set_bhistory, only: [:show, :edit, :update, :destroy]

  # GET /bhistories
  # GET /bhistories.json
  def index
    @bhistories = Bhistory.all
  end

  # GET /bhistories/1
  # GET /bhistories/1.json
  def show
  end

  # GET /bhistories/new
  def new
    @bhistory = Bhistory.new
  end

  # GET /bhistories/1/edit
  def edit
  end

  # POST /bhistories
  # POST /bhistories.json
  def create
    @bhistory = Bhistory.new(bhistory_params)

    respond_to do |format|
      if @bhistory.save
        format.html { redirect_to @bhistory, notice: 'Bhistory was successfully created.' }
        format.json { render :show, status: :created, location: @bhistory }
      else
        format.html { render :new }
        format.json { render json: @bhistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bhistories/1
  # PATCH/PUT /bhistories/1.json
  def update
    respond_to do |format|
      if @bhistory.update(bhistory_params)
        format.html { redirect_to @bhistory, notice: 'Bhistory was successfully updated.' }
        format.json { render :show, status: :ok, location: @bhistory }
      else
        format.html { render :edit }
        format.json { render json: @bhistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bhistories/1
  # DELETE /bhistories/1.json
  def destroy
    @bhistory.destroy
    respond_to do |format|
      format.html { redirect_to bhistories_url, notice: 'Bhistory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bhistory
      @bhistory = Bhistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bhistory_params
      params.require(:bhistory).permit(:ayear, :amonth, :acontent, :uid, :uipaddr, :etc1, :etc2, :etc3)
    end
end
