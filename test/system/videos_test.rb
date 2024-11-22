require "application_system_test_case"

class VideosTest < ApplicationSystemTestCase
  setup do
    @video = videos(:one)
  end

  test "visiting the index" do
    visit videos_url
    assert_selector "h1", text: "Videos"
  end

  test "should create video" do
    visit videos_url
    click_on "New video"

    fill_in "Description", with: @video.description
    fill_in "Extension", with: @video.extension
    fill_in "Filename", with: @video.filename
    fill_in "Folder id", with: @video.folder_id_id
    fill_in "Height", with: @video.height
    fill_in "Last update", with: @video.last_update
    fill_in "Mime type", with: @video.mime_type
    fill_in "Name", with: @video.name
    fill_in "Remote", with: @video.remote_id
    fill_in "Web content link", with: @video.web_content_link
    fill_in "Width", with: @video.width
    click_on "Create Video"

    assert_text "Video was successfully created"
    click_on "Back"
  end

  test "should update Video" do
    visit video_url(@video)
    click_on "Edit this video", match: :first

    fill_in "Description", with: @video.description
    fill_in "Extension", with: @video.extension
    fill_in "Filename", with: @video.filename
    fill_in "Folder id", with: @video.folder_id_id
    fill_in "Height", with: @video.height
    fill_in "Last update", with: @video.last_update
    fill_in "Mime type", with: @video.mime_type
    fill_in "Name", with: @video.name
    fill_in "Remote", with: @video.remote_id
    fill_in "Web content link", with: @video.web_content_link
    fill_in "Width", with: @video.width
    click_on "Update Video"

    assert_text "Video was successfully updated"
    click_on "Back"
  end

  test "should destroy Video" do
    visit video_url(@video)
    click_on "Destroy this video", match: :first

    assert_text "Video was successfully destroyed"
  end
end
