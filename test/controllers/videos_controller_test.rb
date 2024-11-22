require "test_helper"

class VideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video = videos(:one)
  end

  test "should get index" do
    get videos_url
    assert_response :success
  end

  test "should get new" do
    get new_video_url
    assert_response :success
  end

  test "should create video" do
    assert_difference("Video.count") do
      post videos_url, params: { video: { description: @video.description, extension: @video.extension, filename: @video.filename, folder_id_id: @video.folder_id_id, height: @video.height, last_update: @video.last_update, mime_type: @video.mime_type, name: @video.name, remote_id: @video.remote_id, web_content_link: @video.web_content_link, width: @video.width } }
    end

    assert_redirected_to video_url(Video.last)
  end

  test "should show video" do
    get video_url(@video)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_url(@video)
    assert_response :success
  end

  test "should update video" do
    patch video_url(@video), params: { video: { description: @video.description, extension: @video.extension, filename: @video.filename, folder_id_id: @video.folder_id_id, height: @video.height, last_update: @video.last_update, mime_type: @video.mime_type, name: @video.name, remote_id: @video.remote_id, web_content_link: @video.web_content_link, width: @video.width } }
    assert_redirected_to video_url(@video)
  end

  test "should destroy video" do
    assert_difference("Video.count", -1) do
      delete video_url(@video)
    end

    assert_redirected_to videos_url
  end
end
