class AddMusicAlbumIdToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :music_album_id, :integer
  end
end
