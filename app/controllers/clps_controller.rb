  class ClpsController < ApplicationController
  before_action :set_clp, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @clps = Clp.all
  end

  def show
    @clp_contents = @clp.clp_contents.all
  end

  def new
    @clp = Clp.new
  end

  def edit
  end

  def create
    @clp = current_user.clps.new(clp_params)

    respond_to do |format|
      if @clp.save
        format.html { redirect_to @clp, notice: 'Clp was successfully created.' }
        format.json { render :show, status: :created, location: @clp }
      else
        format.html { render :new }
        format.json { render json: @clp.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @clp.update(clp_params)
        format.html { redirect_to @clp, notice: 'Clp was successfully updated.' }
        format.json { render :show, status: :ok, location: @clp }
      else
        format.html { render :edit }
        format.json { render json: @clp.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @clp.destroy
    respond_to do |format|
      format.html { redirect_to clps_url, notice: 'Clp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_clp
      @clp = Clp.find(params[:id])
    end

    def clp_params
      params.require(:clp).permit(:sfc_chapter, :theme, :team_leaders)
    end
end
