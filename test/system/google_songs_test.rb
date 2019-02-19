require "application_system_test_case"

class GoogleSongsTest < ApplicationSystemTestCase
  setup do
    @google_song = google_songs(:one)
  end

  test "visiting the index" do
    visit google_songs_url
    assert_selector "h1", text: "Google Songs"
  end

  test "creating a Google song" do
    visit google_songs_url
    click_on "New Google Song"

    fill_in "Artise", with: @google_song.Artise
    fill_in "Content provider", with: @google_song.content_provider
    fill_in "Device type", with: @google_song.device_type
    fill_in "End date", with: @google_song.end_date
    fill_in "Label", with: @google_song.label
    fill_in "Product title", with: @google_song.product_title
    fill_in "Start date", with: @google_song.start_date
    fill_in "Year", with: @google_song.year
    click_on "Create Google song"

    assert_text "Google song was successfully created"
    click_on "Back"
  end

  test "updating a Google song" do
    visit google_songs_url
    click_on "Edit", match: :first

    fill_in "Artise", with: @google_song.Artise
    fill_in "Content provider", with: @google_song.content_provider
    fill_in "Device type", with: @google_song.device_type
    fill_in "End date", with: @google_song.end_date
    fill_in "Label", with: @google_song.label
    fill_in "Product title", with: @google_song.product_title
    fill_in "Start date", with: @google_song.start_date
    fill_in "Year", with: @google_song.year
    click_on "Update Google song"

    assert_text "Google song was successfully updated"
    click_on "Back"
  end

  test "destroying a Google song" do
    visit google_songs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Google song was successfully destroyed"
  end
end
