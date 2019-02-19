require 'test_helper'

class GoogleSongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @google_song = google_songs(:one)
  end

  test "should get index" do
    get google_songs_url
    assert_response :success
  end

  test "should get new" do
    get new_google_song_url
    assert_response :success
  end

  test "should create google_song" do
    assert_difference('GoogleSong.count') do
      post google_songs_url, params: { google_song: { Artise: @google_song.Artise, content_provider: @google_song.content_provider, device_type: @google_song.device_type, end_date: @google_song.end_date, label: @google_song.label, product_title: @google_song.product_title, start_date: @google_song.start_date, year: @google_song.year } }
    end

    assert_redirected_to google_song_url(GoogleSong.last)
  end

  test "should show google_song" do
    get google_song_url(@google_song)
    assert_response :success
  end

  test "should get edit" do
    get edit_google_song_url(@google_song)
    assert_response :success
  end

  test "should update google_song" do
    patch google_song_url(@google_song), params: { google_song: { Artise: @google_song.Artise, content_provider: @google_song.content_provider, device_type: @google_song.device_type, end_date: @google_song.end_date, label: @google_song.label, product_title: @google_song.product_title, start_date: @google_song.start_date, year: @google_song.year } }
    assert_redirected_to google_song_url(@google_song)
  end

  test "should destroy google_song" do
    assert_difference('GoogleSong.count', -1) do
      delete google_song_url(@google_song)
    end

    assert_redirected_to google_songs_url
  end
end
