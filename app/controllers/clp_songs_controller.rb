class ClpSongsController < ApplicationController
  before_action :set_clp_song, only: [:show, :edit, :update, :destroy]

  # GET /clp_songs
  # GET /clp_songs.json
  def index
    @clp_songs = ClpSong.all
  end

  # GET /clp_songs/1
  # GET /clp_songs/1.json
  def show
  end

  # GET /clp_songs/new
  def new
    @clp_song = ClpSong.new
  end

  # GET /clp_songs/1/edit
  def edit
  end

  # POST /clp_songs
  # POST /clp_songs.json
  def create
    @clp_song = ClpSong.new(clp_song_params)

    respond_to do |format|
      if @clp_song.save
        format.html { redirect_to @clp_song, notice: 'Clp song was successfully created.' }
        format.json { render :show, status: :created, location: @clp_song }
      else
        format.html { render :new }
        format.json { render json: @clp_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clp_songs/1
  # PATCH/PUT /clp_songs/1.json
  def update
    respond_to do |format|
      if @clp_song.update(clp_song_params)
        format.html { redirect_to @clp_song, notice: 'Clp song was successfully updated.' }
        format.json { render :show, status: :ok, location: @clp_song }
      else
        format.html { render :edit }
        format.json { render json: @clp_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clp_songs/1
  # DELETE /clp_songs/1.json
  def destroy
    @clp_song.destroy
    respond_to do |format|
      format.html { redirect_to clp_songs_url, notice: 'Clp song was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clp_song
      @clp_song = ClpSong.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clp_song_params
      params.require(:clp_song).permit(:clp_id, :user_id, :songs)
    end
end
