require 'test_helper'

class PanchayatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @panchayat = panchayats(:one)
  end

  test "should get index" do
    get panchayats_url, as: :json
    assert_response :success
  end

  test "should create panchayat" do
    assert_difference('Panchayat.count') do
      post panchayats_url, params: { panchayat: { code: @panchayat.code, name: @panchayat.name } }, as: :json
    end

    assert_response 201
  end

  test "should show panchayat" do
    get panchayat_url(@panchayat), as: :json
    assert_response :success
  end

  test "should update panchayat" do
    patch panchayat_url(@panchayat), params: { panchayat: { code: @panchayat.code, name: @panchayat.name } }, as: :json
    assert_response 200
  end

  test "should destroy panchayat" do
    assert_difference('Panchayat.count', -1) do
      delete panchayat_url(@panchayat), as: :json
    end

    assert_response 204
  end
end
