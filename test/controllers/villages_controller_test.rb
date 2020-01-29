require 'test_helper'

class VillagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @village = villages(:one)
  end

  test "should get index" do
    get villages_url, as: :json
    assert_response :success
  end

  test "should create village" do
    assert_difference('Village.count') do
      post villages_url, params: { village: { code: @village.code, name: @village.name } }, as: :json
    end

    assert_response 201
  end

  test "should show village" do
    get village_url(@village), as: :json
    assert_response :success
  end

  test "should update village" do
    patch village_url(@village), params: { village: { code: @village.code, name: @village.name } }, as: :json
    assert_response 200
  end

  test "should destroy village" do
    assert_difference('Village.count', -1) do
      delete village_url(@village), as: :json
    end

    assert_response 204
  end
end
