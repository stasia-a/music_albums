class TracksController < ApplicationController


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
