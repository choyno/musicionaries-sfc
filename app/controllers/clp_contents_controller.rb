class ClpContentsController < ApplicationController
  before_action :get_clp
  before_action :set_clp_content, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]

  def index
    @clp_contents = @clp.clp_contents
  end

  def show
  end

  def new
    @clp_content = @clp.clp_contents.build
  end

  def edit
  end

  def create
    @clp_content = @clp.clp_contents.build(clp_content_params)

    respond_to do |format|
      if @clp_content.save
        format.html { redirect_to clp_clp_content_path(@clp, @clp_content), notice: 'Clp content was successfully created.' }
        format.json { render :show, status: :created, location: @clp_content }
      else
        format.html { render :new }
        format.json { render json: @clp_content.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @clp_content.update(clp_content_params)
        format.html { redirect_to clp_clp_content_path(@clp, @clp_content), notice: 'Clp content was successfully updated.' }
        format.json { render :show, status: :ok, location: @clp_content }
      else
        format.html { render :edit }
        format.json { render json: @clp_content.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @clp_content.destroy
    respond_to do |format|
      format.html { redirect_to clp_path(@clp), notice: 'Clp content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def get_clp
      @clp = Clp.find(params[:clp_id])
    end

    def set_clp_content
      @clp_content = @clp.clp_contents.find(params[:id])
      @clp_songs = @clp_content.song
      @song_titles = @clp_content.song_titles
    end

    def clp_content_params
      params.require(:clp_content).permit(:clp_id, :talk_title, song_ids:[])
    end
end
