class TracksController < ApplicationController
# GET /music_albums
  # GET /music_albums.json
  def index
    @music_albums = MusicAlbum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @music_albums }
    end
  end

  def show
    @music_album = MusicAlbum.find(params[:id])
    @tracks = @music_album.tracks

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @music_album }
    end
  end

 
  def new
    @music_album = MusicAlbum.find(params[:music_album_id])
    @track = @music_album.tracks.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @track }
    end
  end

  # GET /music_albums/1/edit
  def edit
    @music_album = MusicAlbum.find(params[:id])
  end

  def create
    @music_album = MusicAlbum.find(params[:music_album_id])
    @track = Track.new(params[:track])

    respond_to do |format|
      if @track.save
        format.html { redirect_to @music_album, notice: 'Track  was successfully created.' }
        format.json { render json: @music_album, status: :created, location: @music_album }
      else
        format.html { render action: "new" }
        format.json { render json: @music_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /music_albums/1
  # PUT /music_albums/1.json
  def update
    @music_album = MusicAlbum.find(params[:id])

    respond_to do |format|
      if @music_album.update_attributes(params[:music_album])
        format.html { redirect_to @music_album, notice: 'Music album was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @music_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /music_albums/1
  # DELETE /music_albums/1.json
  def destroy
    @track = Track.find(params[:id])
    @music_album = @track.music_album
    @track.destroy

    respond_to do |format|
      format.html { redirect_to @music_album, notice: 'Track was successfuly deleted' }
      format.json { head :no_content }
    end
  end

end
