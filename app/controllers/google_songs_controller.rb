class GoogleSongsController < ApplicationController
  before_action :set_google_song, only: [:show, :edit, :update, :destroy]

  # GET /google_songs
  # GET /google_songs.json
  def index
    @google_songs = GoogleSong.all
  end

  # GET /google_songs/1
  # GET /google_songs/1.json
  def show
  end

  # GET /google_songs/new
  def new
    @google_song = GoogleSong.new
  end

  # GET /google_songs/1/edit
  def edit
  end

  # POST /google_songs
  # POST /google_songs.json
  def create
    @google_song = GoogleSong.new(google_song_params)

    respond_to do |format|
      if @google_song.save
        format.html { redirect_to @google_song, notice: 'Google song was successfully created.' }
        format.json { render :show, status: :created, location: @google_song }
      else
        format.html { render :new }
        format.json { render json: @google_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /google_songs/1
  # PATCH/PUT /google_songs/1.json
  def update
    respond_to do |format|
      if @google_song.update(google_song_params)
        format.html { redirect_to @google_song, notice: 'Google song was successfully updated.' }
        format.json { render :show, status: :ok, location: @google_song }
      else
        format.html { render :edit }
        format.json { render json: @google_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /google_songs/1
  # DELETE /google_songs/1.json
  def destroy
    @google_song.destroy
    respond_to do |format|
      format.html { redirect_to google_songs_url, notice: 'Google song was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_google_song
      @google_song = GoogleSong.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def google_song_params
      params.require(:google_song).permit(:Artise, :product_title, :content_provider, :device_type, :label, :start_date, :end_date, :year)
    end
end
