require 'test_helper'

class MusicAlbumsControllerTest < ActionController::TestCase
  setup do
    @music_album = music_albums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:music_albums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create music_album" do
    assert_difference('MusicAlbum.count') do
      post :create, music_album: { name: @music_album.name, year: @music_album.year }
    end

    assert_redirected_to music_album_path(assigns(:music_album))
  end

  test "should show music_album" do
    get :show, id: @music_album
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @music_album
    assert_response :success
  end

  test "should update music_album" do
    put :update, id: @music_album, music_album: { name: @music_album.name, year: @music_album.year }
    assert_redirected_to music_album_path(assigns(:music_album))
  end

  test "should destroy music_album" do
    assert_difference('MusicAlbum.count', -1) do
      delete :destroy, id: @music_album
    end

    assert_redirected_to music_albums_path
  end
end
